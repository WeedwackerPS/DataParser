meta:
  id: enum__salesman_special_reward_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: salesman_special_reward_type
enums:
  salesman_special_reward_type:
    0: special_reward
    1: special_material
    2: special_drop
