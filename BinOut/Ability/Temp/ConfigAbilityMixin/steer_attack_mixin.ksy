meta:
  id: steer_attack_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: steer_state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_steer_state_i_ds
  - id: start_normalized_time
    type: f4
    if: has_field_start_normalized_time
  - id: end_normalized_time
    type: f4
    if: has_field_end_normalized_time
  - id: angular_speed
    type: f4
    if: has_field_angular_speed
  - id: attack_angle
    type: f4
    if: has_field_attack_angle
  - id: attack_trigger
    type: aux_types::string
    if: has_field_attack_trigger
  - id: attack_distance
    type: f4
    if: has_field_attack_distance
  - id: remote_steer_to_local_target
    type: u1
    if: has_field_remote_steer_to_local_target
instances:
  has_field_steer_state_i_ds: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_start_normalized_time: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_end_normalized_time: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_angular_speed: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_attack_angle: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_attack_trigger: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_attack_distance: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_remote_steer_to_local_target: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
