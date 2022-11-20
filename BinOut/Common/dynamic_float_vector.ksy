meta:
  id: dynamic_float_vector
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: x
    type: aux_types::dynamic_float
    if: has_field_x
  - id: y
    type: aux_types::dynamic_float
    if: has_field_y
  - id: z
    type: aux_types::dynamic_float
    if: has_field_z
instances:
  has_field_x: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_y: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_z: # Field №2
    value: (bit_field & 0b100) != 0
