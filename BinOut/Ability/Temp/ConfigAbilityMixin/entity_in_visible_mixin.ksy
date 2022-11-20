meta:
  id: entity_in_visible_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../EnumType/enum__ability_entity_visible_reason
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: reason
    type: enum__ability_entity_visible_reason
    if: has_field_reason
  - id: disable_audio
    type: u1
    if: has_field_disable_audio
instances:
  has_field_predicates: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_reason: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_disable_audio: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
