meta:
  id: talk_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__play_mode
    - ../EnumType/enum__talk_begin_way
    - ../EnumType/enum__talk_hero_type
    - ../EnumType/enum__talk_load_type
    - ../EnumType/enum__talk_mark_type
    - ../EnumType/enum__talk_exec_type
    - Common/array_of__talk_cond__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
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
    type: array_of__talk_cond__length_s
    if: has_field_begin_cond
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: next_talks
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_talks
  - id: init_dialog
    type: aux_types::vlq_base128_le_u
    if: has_field_init_dialog
  - id: decorator_id
    type: aux_types::vlq_base128_le_u
    if: has_field_decorator_id
  - id: next_random_talks
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_random_talks
  - id: show_random_talk_count
    type: aux_types::vlq_base128_le_s
    if: has_field_show_random_talk_count
  - id: npc_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_npc_id
  - id: participant_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_participant_id
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
  - id: dont_block_daily
    type: u1
    if: has_field_dont_block_daily
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
    type: array_of__talk_exec__length_s
    if: has_field_finish_exec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_begin_way: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_active_mode: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_begin_cond_comb: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_begin_cond: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_priority: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_next_talks: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_init_dialog: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_decorator_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_next_random_talks: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_show_random_talk_count: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_npc_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_participant_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_perform_cfg: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_hero_talk: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_load_type: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_quest_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_extra_load_mark_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_dont_block_daily: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_pre_perform_cfg: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_stay_free_style: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_enable_camera_displacement: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_lock_game_time: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_talk_mark_type: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_quest_idle_talk: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_low_priority: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_finish_exec: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
types:
  array_of__talk_exec__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: talk_exec
        repeat: expr
        repeat-expr: length.value
  talk_exec:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__talk_exec_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
