meta:
  id: enum__reward_resource_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: reward_resource_type
enums:
  reward_resource_type:
    0: elec
    1: fire
    2: grass
    3: ice
    4: rock
    5: water
    6: wind
