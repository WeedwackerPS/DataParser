meta:
  id: billboard_fixed_mark_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: prefab_name
    type: aux_types::string
    if: has_field_prefab_name
  - id: only_show_in_element_view
    type: u1
    if: has_field_only_show_in_element_view
instances:
  has_field_prefab_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_only_show_in_element_view: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
