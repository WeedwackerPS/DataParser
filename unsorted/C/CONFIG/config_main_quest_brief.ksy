types:
  config_main_quest_brief:
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
      - id: title
        type: aux_types::vlq_base128_le_u
        if: has_field_title
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: recommend_level
        type: aux_types::vlq_base128_le_u
        if: has_field_recommend_level
      - id: suggest_track_main_quest_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_suggest_track_main_quest_list
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
      - id: sub_quests
        type: array_of__config_quest_scheme__length_u
        if: has_field_sub_quests
    instances:
      has_field_id: # Field №0
        value: (bit_field.value & 00000001) != 0
      has_field_series: # Field №1
        value: (bit_field.value & 00000010) != 0
      has_field_type: # Field №2
        value: (bit_field.value & 00000100) != 0
      has_field_main_quest_tag: # Field №3
        value: (bit_field.value & 00001000) != 0
      has_field_title: # Field №4
        value: (bit_field.value & 00010000) != 0
      has_field_desc: # Field №5
        value: (bit_field.value & 00100000) != 0
      has_field_recommend_level: # Field №6
        value: (bit_field.value & 01000000) != 0
      has_field_suggest_track_main_quest_list: # Field №7
        value: (bit_field.value & 0b000000010000000) != 0
      has_field_reward_id_list: # Field №8
        value: (bit_field.value & 0b000000100000000) != 0
      has_field_show_type: # Field №9
        value: (bit_field.value & 0b000001000000000) != 0
      has_field_special_show_cond_id_list: # Field №10
        value: (bit_field.value & 0b000010000000000) != 0
      has_field_special_show_quest_id: # Field №11
        value: (bit_field.value & 0b000100000000000) != 0
      has_field_chapter_id: # Field №12
        value: (bit_field.value & 0b001000000000000) != 0
      has_field_task_id: # Field №13
        value: (bit_field.value & 0b010000000000000) != 0
      has_field_sub_quests: # Field №14
        value: (bit_field.value & 0b100000000000000) != 0
