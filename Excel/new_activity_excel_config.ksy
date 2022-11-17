meta:
  id: new_activity_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__new_activity_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: activity_type
    type: enum__new_activity_type
    if: has_field_activity_type
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: activity_scene_tag
    type: aux_types::string
    if: has_field_activity_scene_tag
  - id: is_load_terrain
    type: u1
    if: has_field_is_load_terrain
  - id: cond_group_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cond_group_id
  - id: watcher_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id
  - id: is_ban_client_ui
    type: u1
    if: has_field_is_ban_client_ui
instances:
  has_field_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_activity_scene_tag: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_load_terrain: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cond_group_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_watcher_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_ban_client_ui: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
