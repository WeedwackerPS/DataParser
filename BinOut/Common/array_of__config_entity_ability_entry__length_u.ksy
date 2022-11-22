meta:
  id: array_of__config_entity_ability_entry__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_entity_ability_entry
    repeat: expr
    repeat-expr: length.value
types:
  config_entity_ability_entry:
    seq:
      - id: bit_field
        type: u1
      - id: ability_id
        type: aux_types::string
        if: has_field_ability_id
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: ability_override
        type: aux_types::string
        if: has_field_ability_override
    instances:
      has_field_ability_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_ability_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_ability_override: # Field №2
        value: (bit_field & 0b100) != 0
