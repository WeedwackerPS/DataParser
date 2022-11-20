meta:
  id: by_has_modifier
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
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_modifier_name: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
