meta:
  id: enum__sumo_difficulty_type
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
    enum: sumo_difficulty_type
enums:
  sumo_difficulty_type:
    0: sumo_difficulty_easy
    1: sumo_difficulty_mid
    2: sumo_difficulty_hard
