meta:
  id: config_element_ui
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__enum__entity_type__length_u
    - ../../DictType/dict_of__aux_types__string_aux_types__string
    - ../../EnumType/enum__element_reaction_type
seq:
  - id: bit_field
    type: u1
  - id: show_icon_entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_show_icon_entity_types
  - id: show_reaction_entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_show_reaction_entity_types
  - id: icon_recover_time
    type: f4
    if: has_field_icon_recover_time
  - id: icon_disappear_time
    type: f4
    if: has_field_icon_disappear_time
  - id: icon_disappear_round
    type: aux_types::vlq_base128_le_u
    if: has_field_icon_disappear_round
  - id: icon_show_distance
    type: f4
    if: has_field_icon_show_distance
  - id: override_elem_path
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_override_elem_path
  - id: reaction_elem_path
    type: dict_of__enum__element_reaction_type_aux_types__string
    if: has_field_reaction_elem_path
instances:
  has_field_show_icon_entity_types: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_show_reaction_entity_types: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_icon_recover_time: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_icon_disappear_time: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_icon_disappear_round: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_icon_show_distance: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_override_elem_path: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_reaction_elem_path: # Field №7
    value: (bit_field & 0b10000000) != 0
types:
  dict_of__enum__element_reaction_type_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__element_reaction_type_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__element_reaction_type_aux_types__string:
    seq:
      - id: key
        type: enum__element_reaction_type
      - id: value
        type: aux_types::string
