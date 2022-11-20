meta:
  id: global_sub_shield_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: main_shield_modifier_name
    type: aux_types::string
    if: has_field_main_shield_modifier_name
  - id: notify_mainshield_when_hit
    type: u1
    if: has_field_notify_mainshield_when_hit
instances:
  has_field_main_shield_modifier_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_notify_mainshield_when_hit: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
