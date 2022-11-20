meta:
  id: tower_schedule_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: entrance_floor_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_entrance_floor_id
  - id: schedules
    type: array_of__tower_schedule__length_s
    if: has_field_schedules
  - id: close_time
    type: aux_types::string
    if: has_field_close_time
  - id: schedule_rewards
    type: array_of__tower_star_reward__length_s
    if: has_field_schedule_rewards
  - id: commemorative_reward
    type: aux_types::vlq_base128_le_u
    if: has_field_commemorative_reward
  - id: monthly_level_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monthly_level_config_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: buffname
    type: aux_types::vlq_base128_le_u
    if: has_field_buffname
  - id: icon
    type: aux_types::string
    if: has_field_icon
instances:
  has_field_schedule_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_entrance_floor_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_schedules: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_close_time: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_schedule_rewards: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_commemorative_reward: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_monthly_level_config_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_buffname: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_icon: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
types:
  array_of__tower_schedule__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: tower_schedule
        repeat: expr
        repeat-expr: length.value
  tower_schedule:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: floor_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_floor_list
      - id: open_time
        type: aux_types::string
        if: has_field_open_time
    instances:
      has_field_floor_list: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_open_time: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  array_of__tower_star_reward__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: tower_star_reward
        repeat: expr
        repeat-expr: length.value
  tower_star_reward:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: min_star_count
        type: aux_types::vlq_base128_le_u
        if: has_field_min_star_count
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
    instances:
      has_field_min_star_count: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reward_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
