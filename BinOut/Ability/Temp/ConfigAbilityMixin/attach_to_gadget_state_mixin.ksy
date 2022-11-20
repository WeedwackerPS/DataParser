meta:
  id: attach_to_gadget_state_mixin
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
  - id: gadget_state
    type: aux_types::vlq_base128_le_s
    if: has_field_gadget_state
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_gadget_state: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
