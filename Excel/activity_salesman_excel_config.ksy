meta:
  id: activity_salesman_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__f4__length_u
    - ../EnumType/enum__salesman_special_reward_type
    - ../EnumType/enum__salesman_special_reward_obtain_method
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: daily_config_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_daily_config_id_list
  - id: normal_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_normal_reward_id_list
  - id: special_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_special_reward_id_list
  - id: special_prob_list
    type: array_of__f4__length_u
    if: has_field_special_prob_list
  - id: special_reward
    type: salesman_special_reward
    if: has_field_special_reward
instances:
  has_field_schedule_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_daily_config_id_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_normal_reward_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_special_reward_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_special_prob_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_special_reward: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
types:
  salesman_special_reward:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: reward_type
        type: enum__salesman_special_reward_type
        if: has_field_reward_type
      - id: obtain_method
        type: enum__salesman_special_reward_obtain_method
        if: has_field_obtain_method
      - id: obtain_param
        type: aux_types::string
        if: has_field_obtain_param
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_preview_id
    instances:
      has_field_reward_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_obtain_method: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_obtain_param: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_id: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_preview_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)