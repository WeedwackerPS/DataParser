meta:
  id: blitz_rush_stage_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: watcher_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_list
  - id: stage_title
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_title
  - id: game_play_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_game_play_desc
  - id: guidetask_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_guidetask_desc
  - id: guide_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_quest_id
  - id: push_tips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_open_day: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_watcher_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_stage_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_game_play_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_guidetask_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_guide_quest_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_push_tips_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
