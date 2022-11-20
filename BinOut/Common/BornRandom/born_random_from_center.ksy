meta:
  id: born_random_from_center
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - born_random
seq:
  - id: base
    type: born_random
  - id: bit_field
    type: u1
  - id: min_random_range
    type: aux_types::dynamic_float
    if: has_field_min_random_range
  - id: max_random_range
    type: aux_types::dynamic_float
    if: has_field_max_random_range
instances:
  has_field_min_random_range: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_max_random_range: # Field №1
    value: (bit_field & 0b10) != 0
