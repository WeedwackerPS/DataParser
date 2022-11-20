meta:
  id: vector
  endian: le
  license: AGPL-3.0-or-later
seq:
  - id: bit_field
    type: u1
  - id: x
    type: f4
    if: has_field_x
  - id: y
    type: f4
    if: has_field_y
  - id: z
    type: f4
    if: has_field_z
instances:
  has_field_x: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_y: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_z: # Field №2
    value: (bit_field & 0b100) != 0
