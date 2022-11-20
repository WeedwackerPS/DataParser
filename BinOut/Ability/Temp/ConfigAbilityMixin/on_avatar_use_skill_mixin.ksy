meta:
  id: on_avatar_use_skill_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: on_trigger_normal_attack
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_trigger_normal_attack
  - id: on_trigger_skill
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_trigger_skill
  - id: on_trigger_ultimate_skill
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_trigger_ultimate_skill
  - id: use_skill_start
    type: u1
    if: has_field_use_skill_start
instances:
  has_field_on_trigger_normal_attack: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_on_trigger_skill: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_on_trigger_ultimate_skill: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_use_skill_start: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
