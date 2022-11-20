meta:
  id: routine_detail_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__general_routine_type
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__routine_finish_type
    - ../EnumType/enum__routine_actionype
    - ../EnumType/enum__routine_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: routine_id
    type: aux_types::vlq_base128_le_u
    if: has_field_routine_id
  - id: routine_type
    type: enum__general_routine_type
    if: has_field_routine_type
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: tag
    type: aux_types::vlq_base128_le_u
    if: has_field_tag
  - id: is_backup
    type: u1
    if: has_field_is_backup
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: finish_content
    type: routine_finish_content
    if: has_field_finish_content
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: cond_vec
    type: array_of__routine_cond_content__length_s
    if: has_field_cond_vec
  - id: action_vec
    type: array_of__routine_action_content__length_s
    if: has_field_action_vec
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: goal
    type: aux_types::vlq_base128_le_u
    if: has_field_goal
  - id: center_position
    type: aux_types::string
    if: has_field_center_position
  - id: radar_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_radar_radius
  - id: enter_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_enter_distance
  - id: exit_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_exit_distance
instances:
  has_field_routine_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_routine_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_group_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_tag: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_backup: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_finish_content: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_cond_comb: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cond_vec: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_action_vec: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_name: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_desc: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_goal: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_center_position: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_radar_radius: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_enter_distance: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_exit_distance: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
types:
  routine_finish_content:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: finish_type
        type: enum__routine_finish_type
        if: has_field_finish_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
      - id: progress
        type: aux_types::vlq_base128_le_u
        if: has_field_progress
    instances:
      has_field_finish_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_progress: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  array_of__routine_cond_content__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: routine_cond_content
        repeat: expr
        repeat-expr: length.value
  array_of__routine_action_content__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: routine_action_content
        repeat: expr
        repeat-expr: length.value
  routine_cond_content:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__routine_cond_type
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  routine_action_content:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__routine_actionype
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
