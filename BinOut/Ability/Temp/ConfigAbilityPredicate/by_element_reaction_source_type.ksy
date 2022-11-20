meta:
  id: by_element_reaction_source_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__element_reaction_source_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: source_type
    type: enum__element_reaction_source_type
    if: has_field_source_type
instances:
  has_field_source_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
