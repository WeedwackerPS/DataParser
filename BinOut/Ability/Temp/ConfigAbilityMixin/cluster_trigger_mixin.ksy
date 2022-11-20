meta:
  id: cluster_trigger_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../ArrayType/array_of__aux_types__dynamic_float__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: radius
    type: f4
    if: has_field_radius
  - id: duration
    type: f4
    if: has_field_duration
  - id: value_steps
    type: array_of__aux_types__dynamic_float__length_u
    if: has_field_value_steps
  - id: action_queue
    type: array_of__disp__config_ability_action__length_u
    if: has_field_action_queue
instances:
  has_field_born: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_config_id: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_radius: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_duration: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_value_steps: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_action_queue: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
