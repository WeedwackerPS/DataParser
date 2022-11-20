meta:
  id: by_target_gadget_state
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: gadget_state
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_state
instances:
  has_field_gadget_state: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
