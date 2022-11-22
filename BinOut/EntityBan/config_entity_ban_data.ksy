meta:
  id: config_entity_ban_data
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../EnumType/enum__entity_type
seq:
  - id: bit_field
    type: u1
  - id: entity_ban_map
    type: dict_of__aux_types__string_array_of__config_entity_black_grp__length_u
    if: has_field_entity_ban_map
instances:
  has_field_entity_ban_map: # Field №0
    value: (bit_field & 0b1) != 0
types:
  dict_of__aux_types__string_array_of__config_entity_black_grp__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_array_of__config_entity_black_grp__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_array_of__config_entity_black_grp__length_u:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: array_of__config_entity_black_grp__length_u
  array_of__config_entity_black_grp__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_entity_black_grp
        repeat: expr
        repeat-expr: length.value
  config_entity_black_grp:
    seq:
      - id: bit_field
        type: u1
      - id: is_black
        type: u1
        if: has_field_is_black
      - id: entity_type
        type: enum__entity_type
        if: has_field_entity_type
      - id: entity_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_entity_ids
    instances:
      has_field_is_black: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_entity_type: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_entity_ids: # Field №2
        value: (bit_field & 0b100) != 0
