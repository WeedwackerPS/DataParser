meta:
  id: scene_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__scene_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type
    type: enum__scene_type
    if: has_field_type
  - id: ignore_nav_mesh
    type: u1
    if: has_field_ignore_nav_mesh
  - id: script_data
    type: aux_types::string
    if: has_field_script_data
  - id: override_default_profile
    type: aux_types::string
    if: has_field_override_default_profile
  - id: level_entity_config
    type: aux_types::string
    if: has_field_level_entity_config
  - id: entity_appear_sorted
    type: aux_types::vlq_base128_le_u
    if: has_field_entity_appear_sorted
  - id: specified_avatar_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_specified_avatar_list
  - id: max_specified_avatar_num
    type: aux_types::vlq_base128_le_u
    if: has_field_max_specified_avatar_num
  - id: comment
    type: aux_types::string
    if: has_field_comment
  - id: safe_point
    type: aux_types::vlq_base128_le_u
    if: has_field_safe_point
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ignore_nav_mesh: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_script_data: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_override_default_profile: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_level_entity_config: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_entity_appear_sorted: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_specified_avatar_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_max_specified_avatar_num: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_comment: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_safe_point: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
