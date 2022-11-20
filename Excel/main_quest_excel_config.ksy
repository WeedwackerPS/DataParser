meta:
  id: main_quest_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__main_quest_tag_type
    - ../EnumType/enum__play_mode
    - ../EnumType/enum__quest_show_type
    - ../EnumType/enum__quest_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: series
    type: aux_types::vlq_base128_le_u
    if: has_field_series
  - id: type
    type: enum__quest_type
    if: has_field_type
  - id: main_quest_tag
    type: enum__main_quest_tag_type
    if: has_field_main_quest_tag
  - id: active_mode
    type: enum__play_mode
    if: has_field_active_mode
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: lua_path
    type: aux_types::string
    if: has_field_lua_path
  - id: recommend_level
    type: aux_types::vlq_base128_le_u
    if: has_field_recommend_level
  - id: repeatable
    type: u1
    if: has_field_repeatable
  - id: suggest_track_main_quest_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_suggest_track_main_quest_list
  - id: suggest_track_out_of_order
    type: u1
    if: has_field_suggest_track_out_of_order
  - id: reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_reward_id_list
  - id: show_type
    type: enum__quest_show_type
    if: has_field_show_type
  - id: chapter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_id
  - id: task_id
    type: aux_types::vlq_base128_le_u
    if: has_field_task_id
  - id: show_red_point
    type: u1
    if: has_field_show_red_point
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: is_release
    type: u1
    if: has_field_is_release
  - id: special_show_cond_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_special_show_cond_id_list
  - id: special_show_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_special_show_quest_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_series: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_main_quest_tag: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_active_mode: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_title: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_lua_path: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_recommend_level: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_repeatable: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_suggest_track_main_quest_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_suggest_track_out_of_order: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_reward_id_list: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_show_type: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_chapter_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_task_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_show_red_point: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_activity_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_is_release: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_special_show_cond_id_list: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_special_show_quest_id: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
