types:
  config_main_quest_scheme:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
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
      - id: special_show_cond_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_special_show_cond_id_list
      - id: special_show_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_special_show_quest_id
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
      - id: sub_quests
        type: array_of__config_quest_scheme__length_u
        if: has_field_sub_quests
      - id: talks
        type: array_of__config_talk_scheme__length_u
        if: has_field_talks
      - id: preload_lua_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_preload_lua_list
      - id: force_preload_lua_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_force_preload_lua_list
      - id: free_style_dic
        type: dict_of__aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_free_style_dic
    instances:
      has_field_id: # Field №0
        value: (bit_field.value & 000000000000000001) != 0
      has_field_series: # Field №1
        value: (bit_field.value & 000000000000000010) != 0
      has_field_type: # Field №2
        value: (bit_field.value & 000000000000000100) != 0
      has_field_main_quest_tag: # Field №3
        value: (bit_field.value & 000000000000001000) != 0
      has_field_active_mode: # Field №4
        value: (bit_field.value & 000000000000010000) != 0
      has_field_title: # Field №5
        value: (bit_field.value & 000000000000100000) != 0
      has_field_desc: # Field №6
        value: (bit_field.value & 000000000001000000) != 0
      has_field_lua_path: # Field №7
        value: (bit_field.value & 000000000010000000) != 0
      has_field_recommend_level: # Field №8
        value: (bit_field.value & 000000000100000000) != 0
      has_field_repeatable: # Field №9
        value: (bit_field.value & 000000001000000000) != 0
      has_field_suggest_track_main_quest_list: # Field №10
        value: (bit_field.value & 000000010000000000) != 0
      has_field_suggest_track_out_of_order: # Field №11
        value: (bit_field.value & 000000100000000000) != 0
      has_field_reward_id_list: # Field №12
        value: (bit_field.value & 000001000000000000) != 0
      has_field_show_type: # Field №13
        value: (bit_field.value & 000010000000000000) != 0
      has_field_special_show_cond_id_list: # Field №14
        value: (bit_field.value & 000100000000000000) != 0
      has_field_special_show_quest_id: # Field №15
        value: (bit_field.value & 001000000000000000) != 0
      has_field_chapter_id: # Field №16
        value: (bit_field.value & 010000000000000000) != 0
      has_field_task_id: # Field №17
        value: (bit_field.value & 0b0000000100000000000000000) != 0
      has_field_show_red_point: # Field №18
        value: (bit_field.value & 0b0000001000000000000000000) != 0
      has_field_activity_id: # Field №19
        value: (bit_field.value & 0b0000010000000000000000000) != 0
      has_field_sub_quests: # Field №20
        value: (bit_field.value & 0b0000100000000000000000000) != 0
      has_field_talks: # Field №21
        value: (bit_field.value & 0b0001000000000000000000000) != 0
      has_field_preload_lua_list: # Field №22
        value: (bit_field.value & 0b0010000000000000000000000) != 0
      has_field_force_preload_lua_list: # Field №23
        value: (bit_field.value & 0b0100000000000000000000000) != 0
      has_field_free_style_dic: # Field №24
        value: (bit_field.value & 0b1000000000000000000000000) != 0
