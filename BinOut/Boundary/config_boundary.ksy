meta:
  id: config_boundary
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../Common/vector
seq:
  - id: bit_field
    type: u1
  - id: name
    type: aux_types::string
    if: has_field_name
  - id: priority
    type: aux_types::vlq_base128_le_s
    if: has_field_priority
  - id: shape
    type: aux_types::string
    if: has_field_shape
  - id: offset
    type: vector
    if: has_field_offset
  - id: euler
    type: vector
    if: has_field_euler
  - id: height
    type: f4
    if: has_field_height
instances:
  has_field_name: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_priority: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_shape: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_offset: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_euler: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_height: # Field №5
    value: (bit_field & 0b100000) != 0
