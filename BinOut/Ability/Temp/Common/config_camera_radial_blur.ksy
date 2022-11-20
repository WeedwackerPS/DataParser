meta:
  id: config_camera_radial_blur
  endian: le
  license: GPLv2
seq:
  - id: bit_field
    type: u1
  - id: power
    type: f4
    if: has_field_power
  - id: blur_time
    type: f4
    if: has_field_blur_time
  - id: fade_time
    type: f4
    if: has_field_fade_time
instances:
  has_field_power: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_blur_time: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_fade_time: # Field №2
    value: (bit_field & 0b100) != 0
