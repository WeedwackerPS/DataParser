meta:
  id: auto_defence_mixin
  endian: le
  license: GPL
  imports:
    - ../entity_defence_mixin
seq:
  - id: base
    type: entity_defence_mixin
  - id: bit_field
    type: u1
  - id: cost_stamina_ratio
    type: f4
    if: has_field_cost_stamina_ratio
instances:
  has_field_cost_stamina_ratio: # Field №0
    value: (bit_field & 0b1) != 0
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
