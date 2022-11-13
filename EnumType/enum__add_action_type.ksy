meta:
  id: enum__add_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__add_action_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: add_action_type
enums:
  add_action_type:
    0: idle
    1: reset_global_value
