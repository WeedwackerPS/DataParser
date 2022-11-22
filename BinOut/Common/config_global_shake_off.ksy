meta:
  id: config_global_shake_off
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: reduce_durability
    type: f4
    if: has_field_reduce_durability
  - id: interval
    type: f4
    if: has_field_interval
  - id: shake_life_time
    type: f4
    if: has_field_shake_life_time
  - id: shake_value
    type: f4
    if: has_field_shake_value
  - id: shake_period
    type: f4
    if: has_field_shake_period
  - id: shake_smooth_ratio
    type: f4
    if: has_field_shake_smooth_ratio
  - id: shake_along_angle
    type: f4
    if: has_field_shake_along_angle
  - id: shake_rot_angle
    type: f4
    if: has_field_shake_rot_angle
  - id: shake_noise_ratio
    type: f4
    if: has_field_shake_noise_ratio
  - id: shake_dir_ratio
    type: f4
    if: has_field_shake_dir_ratio
  - id: shake_z_ratio
    type: f4
    if: has_field_shake_z_ratio
instances:
  has_field_reduce_durability: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_interval: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_shake_life_time: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_shake_value: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_shake_period: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_shake_smooth_ratio: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_shake_along_angle: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_shake_rot_angle: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_shake_noise_ratio: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_shake_dir_ratio: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_shake_z_ratio: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
