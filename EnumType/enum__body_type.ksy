meta:
  id: enum__body_type
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
    enum: body_type
enums:
  body_type:
    0: body_none
    1: body_boy
    2: body_girl
    3: body_lady
    4: body_male
    5: body_loli
