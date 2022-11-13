meta:
  id: enum__reward_source_system_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__reward_source_system_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: reward_source_system_type
enums:
  reward_source_system_type:
    0: none
    1: mp_play
