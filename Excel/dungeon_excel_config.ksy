meta:
  id: dungeon_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__enum__element_type__length_u
    - ../EnumType/enum__dungeon_play_type
    - ../EnumType/enum__dungeon_state_type
    - ../EnumType/enum__dungeon_type
    - ../EnumType/enum__involve_type
    - ../EnumType/enum__settle_ui_type
    - ../EnumType/enum__settle_show_type
    - Common/array_of__id_count_config__length_s
    - ../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: display_name
    type: aux_types::vlq_base128_le_u
    if: has_field_display_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: type
    type: enum__dungeon_type
    if: has_field_type
  - id: is_dynamic_level
    type: u1
    if: has_field_is_dynamic_level
  - id: serial_id
    type: aux_types::vlq_base128_le_u
    if: has_field_serial_id
  - id: play_type
    type: enum__dungeon_play_type
    if: has_field_play_type
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
  - id: event_interval
    type: aux_types::vlq_base128_le_u
    if: has_field_event_interval
  - id: involve_type
    type: enum__involve_type
    if: has_field_involve_type
  - id: show_level
    type: aux_types::vlq_base128_le_u
    if: has_field_show_level
  - id: avatar_limit_type
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_limit_type
  - id: limit_level
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_level
  - id: level_revise
    type: aux_types::vlq_base128_le_s
    if: has_field_level_revise
  - id: prev_dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_prev_dungeon_id
  - id: require_avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_require_avatar_id
  - id: pass_cond
    type: aux_types::vlq_base128_le_u
    if: has_field_pass_cond
  - id: pass_jump_dungeon
    type: aux_types::vlq_base128_le_u
    if: has_field_pass_jump_dungeon
  - id: revive_interval_time
    type: aux_types::vlq_base128_le_u
    if: has_field_revive_interval_time
  - id: revive_max_count
    type: aux_types::vlq_base128_le_u
    if: has_field_revive_max_count
  - id: day_enter_count
    type: aux_types::vlq_base128_le_u
    if: has_field_day_enter_count
  - id: enter_cost_items
    type: array_of__id_count_config__length_s
    if: has_field_enter_cost_items
  - id: first_pass_reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_pass_reward_preview_id
  - id: pass_reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pass_reward_preview_id
  - id: settle_countdown_time
    type: aux_types::vlq_base128_le_u
    if: has_field_settle_countdown_time
  - id: fail_settle_countdown_time
    type: aux_types::vlq_base128_le_u
    if: has_field_fail_settle_countdown_time
  - id: quit_settle_countdown_time
    type: aux_types::vlq_base128_le_u
    if: has_field_quit_settle_countdown_time
  - id: settle_shows
    type: array_of__enum__settle_show_type__length_s
    if: has_field_settle_shows
  - id: forbidden_restart
    type: u1
    if: has_field_forbidden_restart
  - id: settle_ui_type
    type: enum__settle_ui_type
    if: has_field_settle_ui_type
  - id: statue_cost_id
    type: aux_types::vlq_base128_le_u
    if: has_field_statue_cost_id
  - id: statue_cost_count
    type: aux_types::vlq_base128_le_u
    if: has_field_statue_cost_count
  - id: statue_drop
    type: aux_types::vlq_base128_le_u
    if: has_field_statue_drop
  - id: recommend_element_types
    type: array_of__enum__element_type__length_u
    if: has_field_recommend_element_types
  - id: level_config_map
    type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    if: has_field_level_config_map
  - id: preview_monster_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_preview_monster_list
  - id: gear_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_desc
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: dont_show_push_tips
    type: u1
    if: has_field_dont_show_push_tips
  - id: entry_pic_path
    type: aux_types::string
    if: has_field_entry_pic_path
  - id: state_type
    type: enum__dungeon_state_type
    if: has_field_state_type
  - id: factor_pic
    type: aux_types::string
    if: has_field_factor_pic
  - id: factor_icon
    type: aux_types::string
    if: has_field_factor_icon
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_display_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_dynamic_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_serial_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_play_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_scene_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_event_interval: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_involve_type: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_show_level: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_avatar_limit_type: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_limit_level: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_level_revise: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_prev_dungeon_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_require_avatar_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_pass_cond: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_pass_jump_dungeon: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_revive_interval_time: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_revive_max_count: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_day_enter_count: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_enter_cost_items: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_first_pass_reward_preview_id: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_pass_reward_preview_id: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_settle_countdown_time: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_fail_settle_countdown_time: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_quit_settle_countdown_time: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_settle_shows: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
  has_field_forbidden_restart: # Field №29
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00100000) != 0)
  has_field_settle_ui_type: # Field №30
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b01000000) != 0)
  has_field_statue_cost_id: # Field №31
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b10000000) != 0)
  has_field_statue_cost_count: # Field №32
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000001) != 0)
  has_field_statue_drop: # Field №33
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000010) != 0)
  has_field_recommend_element_types: # Field №34
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000100) != 0)
  has_field_level_config_map: # Field №35
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00001000) != 0)
  has_field_preview_monster_list: # Field №36
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00010000) != 0)
  has_field_gear_desc: # Field №37
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00100000) != 0)
  has_field_city_id: # Field №38
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b01000000) != 0)
  has_field_dont_show_push_tips: # Field №39
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b10000000) != 0)
  has_field_entry_pic_path: # Field №40
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000001) != 0)
  has_field_state_type: # Field №41
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000010) != 0)
  has_field_factor_pic: # Field №42
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000100) != 0)
  has_field_factor_icon: # Field №43
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00001000) != 0)
types:
  array_of__enum__settle_show_type__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: enum__settle_show_type
        repeat: expr
        repeat-expr: length.value
