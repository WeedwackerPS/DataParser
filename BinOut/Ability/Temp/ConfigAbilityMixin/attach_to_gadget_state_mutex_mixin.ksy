meta:
  id: attach_to_gadget_state_mutex_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__array_of__aux_types__string__length_u__length_u
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: gadget_states
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_gadget_states
  - id: modifier_names
    type: array_of__array_of__aux_types__string__length_u__length_u
    if: has_field_modifier_names
instances:
  has_field_gadget_states: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_names: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
