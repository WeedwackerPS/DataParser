meta:
  id: home_world_area_comfort_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__home_world_area_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: area_type
    type: enum__home_world_area_type
    if: has_field_area_type
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: max_comfort
    type: aux_types::vlq_base128_le_u
    if: has_field_max_comfort
  - id: safe_point_str
    type: aux_types::string
    if: has_field_safe_point_str
  - id: low_load_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_low_load_limit
  - id: middle_load_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_middle_load_limit
  - id: high_load_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_high_load_limit
  - id: area_center_pos
    type: array_of__f4__length_u
    if: has_field_area_center_pos
  - id: area_center_rot
    type: array_of__f4__length_u
    if: has_field_area_center_rot
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_scene_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_area_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_area_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_max_comfort: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_safe_point_str: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_low_load_limit: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_middle_load_limit: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_high_load_limit: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_area_center_pos: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_area_center_rot: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
