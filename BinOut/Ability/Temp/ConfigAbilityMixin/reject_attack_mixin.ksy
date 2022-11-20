meta:
  id: reject_attack_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__reject_event_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: attack_tag
    type: aux_types::string
    if: has_field_attack_tag
  - id: limit_time
    type: f4
    if: has_field_limit_time
  - id: type
    type: enum__reject_event_type
    if: has_field_type
instances:
  has_field_attack_tag: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_limit_time: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_type: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
