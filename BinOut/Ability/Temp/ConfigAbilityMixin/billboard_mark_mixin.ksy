meta:
  id: billboard_mark_mixin
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
  - id: icon_name
    type: aux_types::string
    if: has_field_icon_name
  - id: show_distance
    type: f4
    if: has_field_show_distance
instances:
  has_field_icon_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_show_distance: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
