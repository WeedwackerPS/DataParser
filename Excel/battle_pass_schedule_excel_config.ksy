meta:
  id: battle_pass_schedule_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__battle_pass_schedule_reward_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: title_name
    type: aux_types::vlq_base128_le_u
    if: has_field_title_name
  - id: begin_date_str
    type: aux_types::string
    if: has_field_begin_date_str
  - id: end_date_str
    type: aux_types::string
    if: has_field_end_date_str
  - id: cycle_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cycle_list
  - id: extra_paid_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_extra_paid_reward_id
  - id: extra_paid_add_point
    type: aux_types::vlq_base128_le_u
    if: has_field_extra_paid_add_point
  - id: buy_level_cost_coin_num
    type: aux_types::vlq_base128_le_u
    if: has_field_buy_level_cost_coin_num
  - id: cycle_point_upper_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_cycle_point_upper_limit
  - id: level_reward_index_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_reward_index_id
  - id: normal_reward_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_normal_reward_list
  - id: reward_type
    type: enum__battle_pass_schedule_reward_type
    if: has_field_reward_type
  - id: show_image
    type: aux_types::string
    if: has_field_show_image
  - id: show_reward_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_show_reward_list
  - id: stroy_reward_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_stroy_reward_list
  - id: story_id
    type: aux_types::vlq_base128_le_u
    if: has_field_story_id
  - id: mail_day_count
    type: aux_types::vlq_base128_le_u
    if: has_field_mail_day_count
  - id: mail_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mail_config_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_title_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_begin_date_str: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_end_date_str: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cycle_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_extra_paid_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_extra_paid_add_point: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_buy_level_cost_coin_num: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cycle_point_upper_limit: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_level_reward_index_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_normal_reward_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_reward_type: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_show_image: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_show_reward_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_stroy_reward_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_story_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_mail_day_count: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_mail_config_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
