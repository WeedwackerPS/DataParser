meta:
  id: trial_avatar_activity_data_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/watcher_trigger_config
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: trial_avatar_index_id
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_avatar_index_id
  - id: trial_avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_avatar_id
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: battle_avatars_list
    type: aux_types::string
    if: has_field_battle_avatars_list
  - id: first_pass_reward
    type: aux_types::vlq_base128_le_u
    if: has_field_first_pass_reward
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: brief_info
    type: aux_types::vlq_base128_le_u
    if: has_field_brief_info
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
  has_field_trial_avatar_index_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_trial_avatar_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_dungeon_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_battle_avatars_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_first_pass_reward: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_title: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_brief_info: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_trigger_config: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_progress: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_disuse: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
