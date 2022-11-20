meta:
  id: loading_tips_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: tips_title
    type: aux_types::vlq_base128_le_u
    if: has_field_tips_title
  - id: tips_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_tips_desc
  - id: stage_id
    type: aux_types::string
    if: has_field_stage_id
  - id: start_time
    type: aux_types::string
    if: has_field_start_time
  - id: end_time
    type: aux_types::string
    if: has_field_end_time
  - id: min_level
    type: aux_types::vlq_base128_le_u
    if: has_field_min_level
  - id: max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_level
  - id: limit_open_state
    type: aux_types::string
    if: has_field_limit_open_state
  - id: pre_main_quest_ids
    type: aux_types::string
    if: has_field_pre_main_quest_ids
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_tips_title: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_tips_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_stage_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_start_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_end_time: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_min_level: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_max_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_limit_open_state: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_pre_main_quest_ids: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_weight: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
