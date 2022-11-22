meta:
  id: config_dynamic_ability_preload
  endian: le
  license: GPLv2
  imports:
    - ../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: preload_effect
    type: array_of__aux_types__string__length_u
    if: has_field_preload_effect
  - id: preload_gadget
    type: array_of__aux_types__string__length_u
    if: has_field_preload_gadget
  - id: preload_camera
    type: array_of__aux_types__string__length_u
    if: has_field_preload_camera
  - id: preload_skill_icon
    type: array_of__aux_types__string__length_u
    if: has_field_preload_skill_icon
instances:
  has_field_preload_effect: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_preload_gadget: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_preload_camera: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_preload_skill_icon: # Field №3
    value: (bit_field & 0b1000) != 0
