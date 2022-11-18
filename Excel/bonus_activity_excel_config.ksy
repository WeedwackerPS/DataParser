meta:
  id: bonus_activity_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__logic_type
    - Common/array_of__id_count_config__length_s
    - Common/watcher_trigger_config
    - Common/array_of__sign_in_cond_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: bonus_activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_activity_id
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: cond_list
    type: array_of__sign_in_cond_config__length_s
    if: has_field_cond_list
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: reward_item_list
    type: array_of__id_count_config__length_s
    if: has_field_reward_item_list
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
  has_field_bonus_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cond_comb: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_cond_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_watcher_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_item_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_trigger_config: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_progress: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_disuse: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
