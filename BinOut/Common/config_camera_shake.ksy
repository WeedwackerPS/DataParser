meta:
  id: config_camera_shake
  endian: le
  license: GPLv2
  imports:
    - ../../EnumType/enum__camera_shake_type
    - vector
seq:
  - id: bit_field
    type: u1
  - id: shake_type
    type: enum__camera_shake_type
    if: has_field_shake_type
  - id: shake_range
    type: f4
    if: has_field_shake_range
  - id: shake_time
    type: f4
    if: has_field_shake_time
  - id: shake_distance
    type: f4
    if: has_field_shake_distance
  - id: shake_dir
    type: vector
    if: has_field_shake_dir
  - id: extension
    type: config_camera_shake_ext
    if: has_field_extension
instances:
  has_field_shake_type: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_shake_range: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_shake_time: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_shake_distance: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_shake_dir: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_extension: # Field №5
    value: (bit_field & 0b100000) != 0
types:
  config_camera_shake_ext:
    seq:
      - id: bit_field
        type: u1
      - id: infinity
        type: u1
        if: has_field_infinity
      - id: base_on_camera
        type: u1
        if: has_field_base_on_camera
      - id: after_shake
        type: u1
        if: has_field_after_shake
      - id: base_cycle
        type: f4
        if: has_field_base_cycle
      - id: cycle_damping
        type: f4
        if: has_field_cycle_damping
      - id: range_attenuation
        type: f4
        if: has_field_range_attenuation
    instances:
      has_field_infinity: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_base_on_camera: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_after_shake: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_base_cycle: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_cycle_damping: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_range_attenuation: # Field №5
        value: (bit_field & 0b100000) != 0
