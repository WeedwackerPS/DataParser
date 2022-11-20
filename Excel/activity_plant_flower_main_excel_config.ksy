meta:
  id: activity_plant_flower_main_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: flower_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_flower_id_list
  - id: seed_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_seed_id_list
  - id: max_wish_flower_kinds
    type: aux_types::vlq_base128_le_u
    if: has_field_max_wish_flower_kinds
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: guarantee_start_times
    type: aux_types::vlq_base128_le_u
    if: has_field_guarantee_start_times
  - id: pre_quest_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pre_quest_id_list
  - id: open_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_open_quest_id
  - id: content_day
    type: aux_types::vlq_base128_le_u
    if: has_field_content_day
  - id: daily_config_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_daily_config_id_list
instances:
  has_field_schedule_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_flower_id_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_seed_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_max_wish_flower_kinds: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_preview_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_guarantee_start_times: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_pre_quest_id_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_open_quest_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_content_day: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_daily_config_id_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
