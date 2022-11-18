meta:
  id: rogue_stage_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: first_pass_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_pass_reward_id
  - id: preview_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_preview_reward_id
  - id: open_time
    type: aux_types::vlq_base128_le_u
    if: has_field_open_time
  - id: max_coin
    type: aux_types::vlq_base128_le_u
    if: has_field_max_coin
  - id: max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_level
  - id: revise_level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level_id
  - id: stage_name
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_name
  - id: stage_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_desc
  - id: boss_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_boss_id_list
  - id: monster_id_list
    type: array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
    if: has_field_monster_id_list
  - id: level_boss_id_list
    type: array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
    if: has_field_level_boss_id_list
  - id: pre_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pre_quest_id
  - id: goto_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_goto_quest_id
  - id: unlock_rune_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_unlock_rune_list
  - id: gckcmgmogfe
    type: u1
    if: has_field_gckcmgmogfe
instances:
  has_field_stage_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_first_pass_reward_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_preview_reward_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_time: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_max_coin: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_max_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_revise_level_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_stage_name: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_stage_desc: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_boss_id_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_monster_id_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_level_boss_id_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_pre_quest_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_goto_quest_id: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_unlock_rune_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_gckcmgmogfe: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
