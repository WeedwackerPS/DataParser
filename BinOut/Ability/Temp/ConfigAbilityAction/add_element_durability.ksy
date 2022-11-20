meta:
  id: add_element_durability
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__element_type
    - ../../../../EnumType/enum__sort_modifier_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: sort_modifier
    type: enum__sort_modifier_type
    if: has_field_sort_modifier
  - id: use_limit_range
    type: u1
    if: has_field_use_limit_range
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: min_value
    type: aux_types::dynamic_float
    if: has_field_min_value
instances:
  has_field_value: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_element_type: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_sort_modifier: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_use_limit_range: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_max_value: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_min_value: # Field №6
    value: (bit_field & 0b1000000) != 0
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
