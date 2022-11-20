meta:
  id: electric_core_move_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: stage_once_velocity
    type: f4
    if: has_field_stage_once_velocity
  - id: stage_one_accelerate
    type: f4
    if: has_field_stage_one_accelerate
  - id: stage_two_velocity
    type: f4
    if: has_field_stage_two_velocity
  - id: stage_two_attenuation
    type: f4
    if: has_field_stage_two_attenuation
  - id: max_absorb_time
    type: f4
    if: has_field_max_absorb_time
  - id: to_pos
    type: disp__config_born_type
    if: has_field_to_pos
  - id: on_core_enter
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_core_enter
  - id: on_interrupted
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_interrupted
  - id: on_start_success
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_start_success
  - id: on_start_failed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_start_failed
instances:
  has_field_stage_once_velocity: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_stage_one_accelerate: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_stage_two_velocity: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_stage_two_attenuation: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_max_absorb_time: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_to_pos: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_on_core_enter: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_on_interrupted: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_on_start_success: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_on_start_failed: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
