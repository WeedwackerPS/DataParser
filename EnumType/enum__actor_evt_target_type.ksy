meta:
  id: enum__actor_evt_target_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__actor_evt_target_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: actor_evt_target_type
enums:
  actor_evt_target_type:
    0: single
    1: all
