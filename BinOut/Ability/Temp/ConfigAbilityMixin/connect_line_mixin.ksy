meta:
  id: connect_line_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_predicate__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: repeater_modifier
    type: aux_types::string
    if: has_field_repeater_modifier
  - id: collector_modifier
    type: aux_types::string
    if: has_field_collector_modifier
  - id: collector_globalvalue_key
    type: aux_types::string
    if: has_field_collector_globalvalue_key
  - id: other_targets
    type: disp__select_targets
    if: has_field_other_targets
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: predicates_foreach
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates_foreach
instances:
  has_field_repeater_modifier: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_collector_modifier: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_collector_globalvalue_key: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_other_targets: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_predicates: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_predicates_foreach: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
