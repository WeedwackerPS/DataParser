meta:
  id: enum__pin_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
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
