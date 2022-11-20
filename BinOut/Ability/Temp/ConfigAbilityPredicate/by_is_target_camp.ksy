meta:
  id: by_is_target_camp
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__ability_targetting
    - ../../../../EnumType/enum__target_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: camp_base_on
    type: enum__ability_targetting
    if: has_field_camp_base_on
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
instances:
  has_field_camp_base_on: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_camp_target_type: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
