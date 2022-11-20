meta:
  id: replace_face_animation_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../Arraytype/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: old_face_animations
    type: array_of__aux_types__string__length_u
    if: has_field_old_face_animations
  - id: new_face_animations
    type: array_of__aux_types__string__length_u
    if: has_field_new_face_animations
instances:
  has_field_old_face_animations: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_new_face_animations: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
