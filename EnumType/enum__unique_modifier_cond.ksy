meta:
  id: enum__unique_modifier_cond
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__unique_modifier_cond:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: unique_modifier_cond
enums:
  unique_modifier_cond:
    0: greater
    1: smaller
