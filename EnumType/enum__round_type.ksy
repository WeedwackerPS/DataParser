meta:
  id: enum__round_type
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
    enum: round_type
enums:
  round_type:
    0: round_type_floor
    1: round_type_round
    2: round_type_ceil
