meta:
  id: do_action_on_global_value_change_mixin
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
    type: u1
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
  - id: is_delay
    type: u1
    if: has_field_is_delay
  - id: delay_time
    type: f4
    if: has_field_delay_time
instances:
  has_field_global_value_key: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_actions: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_is_delay: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_delay_time: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
