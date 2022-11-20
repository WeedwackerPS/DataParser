meta:
  id: config_hit_scene
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../DictType/dict_of__aux_types__string_aux_types__string
seq:
  - id: bit_field
    type: u1
  - id: default_effect
    type: aux_types::string
    if: has_field_default_effect
  - id: surface_effect
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_surface_effect
instances:
  has_field_default_effect: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_surface_effect: # Field №1
    value: (bit_field & 0b10) != 0
