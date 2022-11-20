meta:
  id: rq_talk_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__play_mode
    - ../EnumType/enum__talk_begin_way
    - ../EnumType/enum__talk_hero_type
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
  - id: npc_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_npc_id
  - id: perform_cfg
    type: aux_types::string
    if: has_field_perform_cfg
  - id: hero_talk
    type: enum__talk_hero_type
    if: has_field_hero_talk
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: dont_block_daily
    type: u1
    if: has_field_dont_block_daily
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
  has_field_npc_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_perform_cfg: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_hero_talk: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_quest_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_dont_block_daily: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
