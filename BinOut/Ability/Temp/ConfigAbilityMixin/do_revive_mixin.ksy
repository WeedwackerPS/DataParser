meta:
  id: do_revive_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__avatar_stage_type
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
  - id: ignore_die_abyss
    type: u1
    if: has_field_ignore_die_abyss
  - id: ignore_die_drawn
    type: u1
    if: has_field_ignore_die_drawn
  - id: on_kill_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_kill_actions
  - id: on_revive_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_revive_actions
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_ignore_die_abyss: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_ignore_die_drawn: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_on_kill_actions: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_on_revive_actions: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
