meta:
  id: home_world_furniture_type_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__furniture_deploy_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type_id
    type: aux_types::vlq_base128_le_u
    if: has_field_type_id
  - id: type_category_id
    type: aux_types::vlq_base128_le_u
    if: has_field_type_category_id
  - id: type_name
    type: aux_types::vlq_base128_le_u
    if: has_field_type_name
  - id: type_name2
    type: aux_types::vlq_base128_le_u
    if: has_field_type_name2
  - id: tab_icon
    type: aux_types::string
    if: has_field_tab_icon
  - id: scene_type
    type: enum__furniture_deploy_type
    if: has_field_scene_type
  - id: camera_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camera_id
  - id: bag_page_only
    type: aux_types::vlq_base128_le_u
    if: has_field_bag_page_only
  - id: is_show_in_bag
    type: u1
    if: has_field_is_show_in_bag
  - id: limit
    type: aux_types::vlq_base128_le_u
    if: has_field_limit
instances:
  has_field_type_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type_category_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_type_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_type_name2: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_tab_icon: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_scene_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_camera_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_bag_page_only: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_show_in_bag: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_limit: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
