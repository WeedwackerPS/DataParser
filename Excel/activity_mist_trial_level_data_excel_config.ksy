meta:
  id: activity_mist_trial_level_data_excel_config
  endian: le
  license: GPLv2
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
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_id
  - id: level_title
    type: aux_types::vlq_base128_le_u
    if: has_field_level_title
  - id: level_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_level_desc
  - id: monster_preview_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_monster_preview_id_list
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: challenge_mission_watcher_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_challenge_mission_watcher_list
  - id: statistics_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_statistics_id_list
  - id: bg_icon_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_bg_icon_hash
  - id: bg_icon_hash_pre
    type: s1
    if: has_field_bg_icon_hash
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: dungeon_factor_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_dungeon_factor_id_list
  - id: fail_tips
    type: array_of__aux_types__string__length_u
    if: has_field_fail_tips
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_schedule_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_level_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_level_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_monster_preview_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_open_day: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_challenge_mission_watcher_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_statistics_id_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_bg_icon_hash: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_dungeon_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_dungeon_factor_id_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_fail_tips: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
