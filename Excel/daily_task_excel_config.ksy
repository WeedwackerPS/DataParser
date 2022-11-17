meta:
  id: daily_task_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__daily_task_finish_type
    - ../EnumType/enum__daily_task_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: pool_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pool_id
  - id: type
    type: enum__daily_task_type
    if: has_field_type
  - id: rarity
    type: aux_types::vlq_base128_le_u
    if: has_field_rarity
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: old_group_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_old_group_vec
  - id: new_group_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_new_group_vec
  - id: finish_type
    type: enum__daily_task_finish_type
    if: has_field_finish_type
  - id: finish_param1
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_param1
  - id: finish_param2
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_param2
  - id: finish_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_progress
  - id: task_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_task_reward_id
  - id: center_position
    type: aux_types::string
    if: has_field_center_position
  - id: enter_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_enter_distance
  - id: exit_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_exit_distance
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: description
    type: aux_types::vlq_base128_le_u
    if: has_field_description
  - id: target
    type: aux_types::vlq_base128_le_u
    if: has_field_target
  - id: radar_radius
    type: f4
    if: has_field_radar_radius
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_city_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_pool_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_rarity: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_quest_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_old_group_vec: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_new_group_vec: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_finish_type: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_finish_param1: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_finish_param2: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_finish_progress: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_task_reward_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_center_position: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_enter_distance: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_exit_distance: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_title: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_description: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_target: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_radar_radius: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
