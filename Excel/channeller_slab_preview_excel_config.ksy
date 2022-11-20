meta:
  id: channeller_slab_preview_excel_config
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
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: activity_stay_time
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_stay_time
  - id: unlock_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_quest_id
  - id: slab_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_slab_quest_id
  - id: unlock_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_player_level
  - id: level_reward_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_reward_gadget_id
  - id: is_mask_avatar_reward
    type: u1
    if: has_field_is_mask_avatar_reward
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_activity_stay_time: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_slab_quest_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_unlock_player_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_level_reward_gadget_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_mask_avatar_reward: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
