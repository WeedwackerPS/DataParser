meta:
  id: config_entity_reuse_data
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: entity_reuse_list
    type: array_of__config_entity_reuse__length_u
    if: has_field_entity_reuse_list
instances:
  has_field_entity_reuse_list: # Field №0
    value: (bit_field & 0b1) != 0
types:
  config_entity_reuse:
    seq:
      - id: bit_field
        type: u1
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: destroy_time
        type: f4
        if: has_field_destroy_time
      - id: max_entity_count
        type: aux_types::vlq_base128_le_u
        if: has_field_max_entity_count
    instances:
      has_field_config_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_destroy_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_max_entity_count: # Field №2
        value: (bit_field & 0b100) != 0
  array_of__config_entity_reuse__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_entity_reuse
        repeat: expr
        repeat-expr: length.value
