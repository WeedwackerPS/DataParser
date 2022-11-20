meta:
  id: aster_activity_perview_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: unlock_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_level
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: watcher_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_list
  - id: special_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_special_reward_id
  - id: activity_stay_time
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_stay_time
  - id: perfab_change_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_perfab_change_quest_id
instances:
  has_field_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_unlock_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_preview_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_watcher_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_special_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_activity_stay_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_perfab_change_quest_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
