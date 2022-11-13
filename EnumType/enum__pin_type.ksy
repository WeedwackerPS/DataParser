meta:
  id: enum__pin_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__pin_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: pin_type
enums:
  pin_type:
    0: none
    1: reference_counting
    2: fully_pin
