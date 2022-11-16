meta:
  id: enum__charge_fill_effect
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: charge_fill_effect
enums:
  charge_fill_effect:
    0: charing_fill_positive
    1: charing_fill_negative
    2: charing_fill_none
