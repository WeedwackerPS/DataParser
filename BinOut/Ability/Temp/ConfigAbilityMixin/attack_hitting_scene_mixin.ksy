meta:
  id: attack_hitting_scene_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: on_hitting_scene
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_hitting_scene
  - id: anim_event_i_ds
    type: array_of__aux_types__string__length_u
    if: has_field_anim_event_i_ds
instances:
  has_field_on_hitting_scene: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_anim_event_i_ds: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
