meta:
  id: set_skill_can_use_in_state_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: skill_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_list
  - id: state_list
    type: array_of__aux_types__string__length_u
    if: has_field_state_list
instances:
  has_field_skill_list: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_state_list: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
