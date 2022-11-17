meta:
  id: activity_chess_preview_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: pre_quest_main_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pre_quest_main_id
  - id: open_quest_main_id
    type: aux_types::vlq_base128_le_u
    if: has_field_open_quest_main_id
  - id: watcher_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_list
  - id: match_player_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_match_player_limit
  - id: open_teach_dungeon
    type: u1
    if: has_field_open_teach_dungeon
  - id: teach_dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_teach_dungeon_id
  - id: teach_map_id
    type: aux_types::vlq_base128_le_u
    if: has_field_teach_map_id
  - id: punish_time
    type: aux_types::vlq_base128_le_u
    if: has_field_punish_time
  - id: coin_id
    type: aux_types::vlq_base128_le_u
    if: has_field_coin_id
  - id: series_id
    type: aux_types::vlq_base128_le_u
    if: has_field_series_id
  - id: teach_score_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_teach_score_id_list
instances:
  has_field_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_preview_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_pre_quest_main_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_open_quest_main_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_watcher_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_match_player_limit: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_open_teach_dungeon: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_teach_dungeon_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_teach_map_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_punish_time: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_coin_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_series_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_teach_score_id_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
