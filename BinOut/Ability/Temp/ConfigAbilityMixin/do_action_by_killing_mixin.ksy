meta:
  id: do_action_by_killing_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../Arraytype/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: attack_tags
    type: array_of__aux_types__string__length_u
    if: has_field_attack_tags
  - id: detect_window
    type: f4
    if: has_field_detect_window
  - id: on_kill
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_kill
instances:
  has_field_attack_tags: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_detect_window: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_on_kill: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
