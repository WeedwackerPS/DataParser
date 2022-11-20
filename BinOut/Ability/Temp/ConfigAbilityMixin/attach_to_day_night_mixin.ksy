meta:
  id: attach_to_day_night_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__level_day_time_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: time
    type: enum__level_day_time_type
    if: has_field_time
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_time: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
