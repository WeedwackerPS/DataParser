meta:
  id: config_talk_scheme
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../ArrayType/array_of__aux_types__string__length_u
    - ../../EnumType/enum__logic_type
    - ../../EnumType/enum__play_mode
    - ../../EnumType/enum__talk_begin_way
    - ../../EnumType/enum__talk_hero_type
    - ../../EnumType/enum__talk_load_type
    - ../../EnumType/enum__talk_mark_type
    - ../../EnumType/enum__quest_cond_type
    - ../../EnumType/enum__talk_exec_type
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: begin_way
    type: enum__talk_begin_way
    if: has_field_begin_way
  - id: active_mode
    type: enum__play_mode
    if: has_field_active_mode
  - id: begin_cond_comb
    type: enum__logic_type
    if: has_field_begin_cond_comb
  - id: begin_cond
    type: array_of__talk_cond_ex__length_u
    if: has_field_begin_cond
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: next_talks
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_talks
  - id: next_random_talks
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_random_talks
  - id: show_random_talk_count
    type: aux_types::vlq_base128_le_s
    if: has_field_show_random_talk_count
  - id: init_dialog
    type: aux_types::vlq_base128_le_u
    if: has_field_init_dialog
  - id: decorator_id
    type: aux_types::vlq_base128_le_u
    if: has_field_decorator_id
  - id: npc_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_npc_id
  - id: perform_cfg
    type: aux_types::string
    if: has_field_perform_cfg
  - id: hero_talk
    type: enum__talk_hero_type
    if: has_field_hero_talk
  - id: load_type
    type: enum__talk_load_type
    if: has_field_load_type
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: extra_load_mark_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_extra_load_mark_id
  - id: asset_index
    type: aux_types::vlq_base128_le_u
    if: has_field_asset_index
  - id: dont_block_daily
    type: u1
    if: has_field_dont_block_daily
  - id: participant_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_participant_id
  - id: pre_perform_cfg
    type: aux_types::string
    if: has_field_pre_perform_cfg
  - id: stay_free_style
    type: u1
    if: has_field_stay_free_style
  - id: enable_camera_displacement
    type: u1
    if: has_field_enable_camera_displacement
  - id: lock_game_time
    type: u1
    if: has_field_lock_game_time
  - id: talk_mark_type
    type: enum__talk_mark_type
    if: has_field_talk_mark_type
  - id: quest_idle_talk
    type: u1
    if: has_field_quest_idle_talk
  - id: low_priority
    type: u1
    if: has_field_low_priority
  - id: finish_exec
    type: array_of__talk_exec_ex__length_u
    if: has_field_finish_exec
  - id: pre_perform_free_style_list
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_pre_perform_free_style_list
  - id: free_style_list
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_free_style_list
instances:
  has_field_id: # Field №0
    value: (bit_field.value & 0b000000000000000000000000000001) != 0
  has_field_begin_way: # Field №1
    value: (bit_field.value & 0b000000000000000000000000000010) != 0
  has_field_active_mode: # Field №2
    value: (bit_field.value & 0b000000000000000000000000000100) != 0
  has_field_begin_cond_comb: # Field №3
    value: (bit_field.value & 0b000000000000000000000000001000) != 0
  has_field_begin_cond: # Field №4
    value: (bit_field.value & 0b000000000000000000000000010000) != 0
  has_field_priority: # Field №5
    value: (bit_field.value & 0b000000000000000000000000100000) != 0
  has_field_next_talks: # Field №6
    value: (bit_field.value & 0b000000000000000000000001000000) != 0
  has_field_next_random_talks: # Field №7
    value: (bit_field.value & 0b000000000000000000000010000000) != 0
  has_field_show_random_talk_count: # Field №8
    value: (bit_field.value & 0b000000000000000000000100000000) != 0
  has_field_init_dialog: # Field №9
    value: (bit_field.value & 0b000000000000000000001000000000) != 0
  has_field_decorator_id: # Field №10
    value: (bit_field.value & 0b000000000000000000010000000000) != 0
  has_field_npc_id: # Field №11
    value: (bit_field.value & 0b000000000000000000100000000000) != 0
  has_field_perform_cfg: # Field №12
    value: (bit_field.value & 0b000000000000000001000000000000) != 0
  has_field_hero_talk: # Field №13
    value: (bit_field.value & 0b000000000000000010000000000000) != 0
  has_field_load_type: # Field №14
    value: (bit_field.value & 0b000000000000000100000000000000) != 0
  has_field_quest_id: # Field №15
    value: (bit_field.value & 0b000000000000001000000000000000) != 0
  has_field_extra_load_mark_id: # Field №16
    value: (bit_field.value & 0b000000000000010000000000000000) != 0
  has_field_asset_index: # Field №17
    value: (bit_field.value & 0b000000000000100000000000000000) != 0
  has_field_dont_block_daily: # Field №18
    value: (bit_field.value & 0b000000000001000000000000000000) != 0
  has_field_participant_id: # Field №19
    value: (bit_field.value & 0b000000000010000000000000000000) != 0
  has_field_pre_perform_cfg: # Field №20
    value: (bit_field.value & 0b000000000100000000000000000000) != 0
  has_field_stay_free_style: # Field №21
    value: (bit_field.value & 0b000000001000000000000000000000) != 0
  has_field_enable_camera_displacement: # Field №22
    value: (bit_field.value & 0b000000010000000000000000000000) != 0
  has_field_lock_game_time: # Field №23
    value: (bit_field.value & 0b000000100000000000000000000000) != 0
  has_field_talk_mark_type: # Field №24
    value: (bit_field.value & 0b000001000000000000000000000000) != 0
  has_field_quest_idle_talk: # Field №25
    value: (bit_field.value & 0b000010000000000000000000000000) != 0
  has_field_low_priority: # Field №26
    value: (bit_field.value & 0b000100000000000000000000000000) != 0
  has_field_finish_exec: # Field №27
    value: (bit_field.value & 0b001000000000000000000000000000) != 0
  has_field_pre_perform_free_style_list: # Field №28
    value: (bit_field.value & 0b010000000000000000000000000000) != 0
  has_field_free_style_list: # Field №29
    value: (bit_field.value & 0b100000000000000000000000000000) != 0
types:
  array_of__talk_cond_ex__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: talk_cond_ex
        repeat: expr
        repeat-expr: length.value
  array_of__talk_exec_ex__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: talk_exec_ex
        repeat: expr
        repeat-expr: length.value
  talk_cond_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__quest_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
  talk_exec_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__talk_exec_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
