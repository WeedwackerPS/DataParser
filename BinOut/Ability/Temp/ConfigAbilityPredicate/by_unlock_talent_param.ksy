meta:
  id: by_unlock_talent_param
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
  - id: talent_param
    type: aux_types::string
    if: has_field_talent_param
instances:
  has_field_talent_param: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
