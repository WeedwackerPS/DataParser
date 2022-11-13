meta:
  id: enum__crowd_spawn_condition_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__crowd_spawn_condition_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: crowd_spawn_condition_type
enums:
  crowd_spawn_condition_type:
    0: inclusive
    1: exclusive
