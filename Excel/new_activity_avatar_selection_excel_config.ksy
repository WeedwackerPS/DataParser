meta:
  id: new_activity_avatar_selection_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: cond_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_id
  - id: watcher_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_list
  - id: avatar_reward_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_avatar_reward_list
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: cost_item_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cost_item_id_list
  - id: cost_item_num_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cost_item_num_list
  - id: is_blocked
    type: u1
    if: has_field_is_blocked
instances:
  has_field_schedule_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cond_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_watcher_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_avatar_reward_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cost_item_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cost_item_num_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_blocked: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
