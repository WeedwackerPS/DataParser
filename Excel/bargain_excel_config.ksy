meta:
  id: bargain_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: dialog_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_dialog_id
  - id: expected_value
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_expected_value
  - id: space
    type: aux_types::vlq_base128_le_u
    if: has_field_space
  - id: success_talk_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_success_talk_id
  - id: fail_talk_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fail_talk_id
  - id: mood_npc_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_npc_id
  - id: mood_upper_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_upper_limit
  - id: random_mood
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_random_mood
  - id: mood_alert_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_alert_limit
  - id: mood_low_limit
    type: aux_types::vlq_base128_le_s
    if: has_field_mood_low_limit
  - id: mood_low_limit_text
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_low_limit_text
  - id: single_fail_mood_deduction
    type: aux_types::vlq_base128_le_u
    if: has_field_single_fail_mood_deduction
  - id: single_fail_talk_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_single_fail_talk_id
  - id: delete_item
    type: u1
    if: has_field_delete_item
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: title_text
    type: aux_types::vlq_base128_le_u
    if: has_field_title_text
  - id: afford_text
    type: aux_types::vlq_base128_le_u
    if: has_field_afford_text
  - id: storage_text
    type: aux_types::vlq_base128_le_u
    if: has_field_storage_text
  - id: mood_hint_text
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_hint_text
  - id: mood_desc_text
    type: aux_types::vlq_base128_le_u
    if: has_field_mood_desc_text
instances:
  has_field_quest_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_dialog_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_expected_value: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_space: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_success_talk_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_fail_talk_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_mood_npc_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_mood_upper_limit: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_random_mood: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_mood_alert_limit: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_mood_low_limit: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_mood_low_limit_text: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_single_fail_mood_deduction: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_single_fail_talk_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_delete_item: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_item_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_title_text: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_afford_text: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_storage_text: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_mood_hint_text: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_mood_desc_text: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
