meta:
  id: activity_summer_time_stage_excel_config
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
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: watcher_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_list
  - id: main_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_main_quest
  - id: pre_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_pre_quest
  - id: guide_button_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_button_quest
  - id: guide_pushtips_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_pushtips_id
  - id: quest_title
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_title
  - id: quest_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_desc
  - id: gameplay_title
    type: aux_types::vlq_base128_le_u
    if: has_field_gameplay_title
  - id: gameplay_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_gameplay_desc
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_stage_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_day: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_watcher_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_main_quest: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_pre_quest: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_guide_button_quest: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_guide_pushtips_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_quest_title: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_quest_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_gameplay_title: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_gameplay_desc: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
