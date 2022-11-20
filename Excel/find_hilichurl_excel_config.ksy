meta:
  id: find_hilichurl_excel_config
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
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: guide_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_quest_id
  - id: end_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_end_quest_id
  - id: assignment_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_assignment_id_list
  - id: hili_wei_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_hili_wei_id_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_preview_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_guide_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_end_quest_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_assignment_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_hili_wei_id_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
