meta:
  id: dict_of__aux_types__string_config_ability_group
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__ability_group_source_type
    - ../../EnumType/enum__ability_group_target_type
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../Common/array_of__config_entity_ability_entry__length_u
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_config_ability_group
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_config_ability_group:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_ability_group
  config_ability_group:
    seq:
      - id: bit_field
        type: u1
      - id: ability_group_source_type
        type: enum__ability_group_source_type
        if: has_field_ability_group_source_type
      - id: ability_group_target_type
        type: enum__ability_group_target_type
        if: has_field_ability_group_target_type
      - id: ability_group_target_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_ability_group_target_id_list
      - id: target_abilities
        type: array_of__config_entity_ability_entry__length_u
        if: has_field_target_abilities
      - id: target_talents
        type: array_of__config_dynamic_talent__length_u
        if: has_field_target_talents
    instances:
      has_field_ability_group_source_type: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_ability_group_target_type: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_ability_group_target_id_list: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_target_abilities: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_target_talents: # Field №4
        value: (bit_field & 0b10000) != 0
  array_of__config_dynamic_talent__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_dynamic_talent
        repeat: expr
        repeat-expr: length.value
  config_dynamic_talent:
    seq:
      - id: bit_field
        type: u1
      - id: talent_name
        type: aux_types::string
        if: has_field_talent_name
    instances:
      has_field_talent_name: # Field №0
        value: (bit_field & 0b1) != 0
