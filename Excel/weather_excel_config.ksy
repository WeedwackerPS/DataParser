meta:
  id: weather_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__climate_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: weather_area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_weather_area_id
  - id: max_height_str
    type: aux_types::string
    if: has_field_max_height_str
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: is_default_valid
    type: u1
    if: has_field_is_default_valid
  - id: template_name
    type: aux_types::string
    if: has_field_template_name
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: profile_name
    type: aux_types::string
    if: has_field_profile_name
  - id: default_climate
    type: enum__climate_type
    if: has_field_default_climate
  - id: is_use_default
    type: u1
    if: has_field_is_use_default
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
instances:
  has_field_area_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_weather_area_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_max_height_str: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gadget_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_default_valid: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_template_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_priority: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_profile_name: # Field №7
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_default_climate: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_use_default: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_scene_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
