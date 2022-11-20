meta:
  id: enviro_follow_rotate_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: self_rotate_off_set
    type: vector
    if: has_field_self_rotate_off_set
  - id: deactive_on_cutsecne_name
    type: aux_types::string
    if: has_field_deactive_on_cutsecne_name
instances:
  has_field_self_rotate_off_set: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_deactive_on_cutsecne_name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
