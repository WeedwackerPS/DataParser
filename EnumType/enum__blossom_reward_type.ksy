meta:
  id: enum__blossom_reward_type
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
    enum: blossom_reward_type
enums:
  blossom_reward_type:
    0: blossom_reward_type_default
    1: blossom_reward_type_to_bag
