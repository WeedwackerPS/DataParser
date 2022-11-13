meta:
  id: enum__mark_visible_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_visible_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mark_visible_type
enums:
  mark_visible_type:
    0: none
    1: always
    2: around
    3: condition_only
    4: other
