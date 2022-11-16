meta:
  id: enum__activity_group_link_reward_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: activity_group_link_reward_type
enums:
  activity_group_link_reward_type:
    0: none
    1: finish
