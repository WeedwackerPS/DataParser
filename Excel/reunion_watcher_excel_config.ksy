meta:
  id: reunion_watcher_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/watcher_trigger_config
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: watcher_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_group_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: activate_level_range
    type: aux_types::string
    if: has_field_activate_level_range
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: score
    type: aux_types::vlq_base128_le_u
    if: has_field_score
  - id: reward_unlock_day
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_unlock_day
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: trigger_config
    type: watcher_trigger_config
    if: has_field_trigger_config
  - id: progress
    type: aux_types::vlq_base128_le_u
    if: has_field_progress
  - id: is_disuse
    type: u1
    if: has_field_is_disuse
instances:
  has_field_watcher_group_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_activate_level_range: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_score: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_unlock_day: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_trigger_config: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_progress: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_disuse: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
