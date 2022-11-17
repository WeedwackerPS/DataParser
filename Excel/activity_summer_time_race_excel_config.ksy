meta:
  id: activity_summer_time_race_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: medal_watcher
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_medal_watcher
  - id: world_coord
    type: array_of__f4__length_u
    if: has_field_world_coord
  - id: medal_point
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_medal_point
  - id: level_title
    type: aux_types::vlq_base128_le_u
    if: has_field_level_title
  - id: time_factor
    type: aux_types::vlq_base128_le_u
    if: has_field_time_factor
  - id: gold_factor
    type: aux_types::vlq_base128_le_u
    if: has_field_gold_factor
  - id: activity_cond_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_cond_id
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: boat_point_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_boat_point_config_id
  - id: player_point_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_player_point_config_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_medal_watcher: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_world_coord: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_medal_point: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_level_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_time_factor: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_gold_factor: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_activity_cond_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_group_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_day: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_boat_point_config_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_player_point_config_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
