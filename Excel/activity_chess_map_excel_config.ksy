meta:
  id: activity_chess_map_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: chess_map_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chess_map_id
  - id: map_name
    type: aux_types::vlq_base128_le_u
    if: has_field_map_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: unlock_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_tips
  - id: map_icon_path
    type: aux_types::string
    if: has_field_map_icon_path
  - id: build_gear_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_build_gear_limit
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: entry_point_id
    type: aux_types::vlq_base128_le_u
    if: has_field_entry_point_id
  - id: unlock_day
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_day
  - id: is_teach_map
    type: u1
    if: has_field_is_teach_map
  - id: prev_map_id
    type: aux_types::vlq_base128_le_u
    if: has_field_prev_map_id
  - id: show
    type: u1
    if: has_field_show
  - id: entrance_point_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_entrance_point_id_list
  - id: exit_point_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_exit_point_id_list
instances:
  has_field_chess_map_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_map_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_tips: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_map_icon_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_build_gear_limit: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_dungeon_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_entry_point_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_unlock_day: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_teach_map: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_prev_map_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_show: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_entrance_point_id_list: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_exit_point_id_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
