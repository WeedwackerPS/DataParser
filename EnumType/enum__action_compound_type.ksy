meta:
  id: enum__action_compound_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__action_compound_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: action_compound_type
enums:
  action_compound_type:
    0: two_axis
    1: all_press
