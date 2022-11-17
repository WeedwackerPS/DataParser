meta:
  id: reunion_mission_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: watcher_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_group_id
  - id: target_score
    type: aux_types::vlq_base128_le_u
    if: has_field_target_score
  - id: finish_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_reward_id
  - id: target_score_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_target_score_list
  - id: finish_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_finish_reward_id_list
  - id: show_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_show_reward_id_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_watcher_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_target_score: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_finish_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_target_score_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_finish_reward_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_reward_id_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
