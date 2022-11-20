meta:
  id: do_action_by_damage_received_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__do_action_by_damage_received_param_type
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: param_type
    type: enum__do_action_by_damage_received_param_type
    if: has_field_param_type
  - id: value_min
    type: aux_types::dynamic_float
    if: has_field_value_min
  - id: value_max
    type: aux_types::dynamic_float
    if: has_field_value_max
  - id: action_queue
    type: array_of__disp__config_ability_action__length_u
    if: has_field_action_queue
instances:
  has_field_param_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_value_min: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_value_max: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_action_queue: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
