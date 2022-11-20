meta:
  id: act_time_slow
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: time_slow
    type: config_time_slow
    if: has_field_time_slow
  - id: is_global
    type: u1
    if: has_field_is_global
instances:
  has_field_time_slow: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_global: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
types:
  config_time_slow:
    seq:
      - id: bit_field
        type: u1
      - id: duration
        type: f4
        if: has_field_duration
      - id: slow_ratio
        type: f4
        if: has_field_slow_ratio
    instances:
      has_field_duration: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_slow_ratio: # Field №1
        value: (bit_field & 0b10) != 0
