meta:
  id: entity_defence_mixin
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
  - id: state_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_state_i_ds
  - id: defend_trigger_id
    type: aux_types::string
    if: has_field_defend_trigger_id
  - id: defend_angle
    type: f4
    if: has_field_defend_angle
  - id: defend_probability
    type: aux_types::dynamic_float
    if: has_field_defend_probability
  - id: defend_probability_delta
    type: aux_types::dynamic_float
    if: has_field_defend_probability_delta
  - id: defend_time_interval
    type: aux_types::dynamic_float
    if: has_field_defend_time_interval
  - id: always_recover
    type: u1
    if: has_field_always_recover
  - id: defend_count_interval
    type: aux_types::dynamic_int
    if: has_field_defend_count_interval
instances:
  has_field_state_i_ds: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_defend_trigger_id: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_defend_angle: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_defend_probability: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_defend_probability_delta: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_defend_time_interval: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_always_recover: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_defend_count_interval: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
