meta:
  id: camera_blur_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/config_camera_radial_blur
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: camera_radial_blur
    type: config_camera_radial_blur
    if: has_field_camera_radial_blur
instances:
  has_field_camera_radial_blur: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
