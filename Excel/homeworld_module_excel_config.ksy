meta:
  id: homeworld_module_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: is_free
    type: u1
    if: has_field_is_free
  - id: unlock_tip_if_un_free
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_tip_if_un_free
  - id: world_scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_world_scene_id
  - id: default_room_scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_default_room_scene_id
  - id: optional_room_scene_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_optional_room_scene_id_vec
  - id: module_name
    type: aux_types::vlq_base128_le_u
    if: has_field_module_name
  - id: module_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_module_desc
  - id: region
    type: array_of__aux_types__string__length_u
    if: has_field_region
  - id: region_point_pos
    type: array_of__aux_types__string__length_u
    if: has_field_region_point_pos
  - id: small_image_addr
    type: aux_types::string
    if: has_field_small_image_addr
  - id: big_image_addr
    type: aux_types::string
    if: has_field_big_image_addr
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_is_free: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_unlock_tip_if_un_free: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_world_scene_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_default_room_scene_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_optional_room_scene_id_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_module_name: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_module_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_region: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_region_point_pos: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_small_image_addr: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_big_image_addr: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
