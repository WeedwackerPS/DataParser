meta:
  id: monster_defend_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__attack_type
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: entity_defence_mixin
  - id: bit_field
    type: u1
  - id: attack_type
    type: enum__attack_type
    if: has_field_attack_type
  - id: on_defend_succeded
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_defend_succeded
  - id: random_direction
    type: u1
    if: has_field_random_direction
  - id: do_not_turn_direction
    type: u1
    if: has_field_do_not_turn_direction
instances:
  has_field_attack_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_on_defend_succeded: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_random_direction: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_do_not_turn_direction: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  state_i_ds:
    value: base.state_i_ds
  defend_trigger_id:
    value: base.defend_trigger_id
  defend_angle:
    value: base.defend_angle
  defend_probability:
    value: base.defend_probability
  defend_probability_delta:
    value: base.defend_probability_delta
  defend_time_interval:
    value: base.defend_time_interval
  always_recover:
    value: base.always_recover
  defend_count_interval:
    value: base.defend_count_interval
  is_unique:
    value: base.is_unique
