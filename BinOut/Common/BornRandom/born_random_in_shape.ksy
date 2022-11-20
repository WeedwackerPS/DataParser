meta:
  id: born_random_in_shape
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - born_random
seq:
  - id: base
    type: born_random
  - id: bit_field
    type: u1
  - id: shape_name
    type: aux_types::string
    if: has_field_shape_name
instances:
  has_field_shape_name: # Field №0
    value: (bit_field & 0b1) != 0
