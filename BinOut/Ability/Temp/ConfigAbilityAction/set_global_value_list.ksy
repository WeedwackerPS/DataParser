meta:
  id: set_global_value_list
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: global_value_list
    type: array_of__global_value_pair__length_u
    if: has_field_global_value_list
instances:
  has_field_global_value_list: # Field №0
    value: (bit_field & 0b1) != 0
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
  array_of__global_value_pair__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: global_value_pair
        repeat: expr
        repeat-expr: length.value
  global_value_pair:
    seq:
      - id: bit_field
        type: u1
      - id: key
        type: aux_types::string
        if: has_field_key
      - id: value
        type: aux_types::dynamic_float
        if: has_field_value
      - id: use_limit_range
        type: u1
        if: has_field_use_limit_range
      - id: random_in_range
        type: u1
        if: has_field_random_in_range
      - id: max_value
        type: aux_types::dynamic_float
        if: has_field_max_value
      - id: min_value
        type: aux_types::dynamic_float
        if: has_field_min_value
    instances:
      has_field_key: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_use_limit_range: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_random_in_range: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_max_value: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_min_value: # Field №5
        value: (bit_field & 0b100000) != 0
