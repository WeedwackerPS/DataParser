meta:
  id: enum__modifier_time_scale
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__modifier_time_scale:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: modifier_time_scale
enums:
  modifier_time_scale:
    0: owner
    1: level
