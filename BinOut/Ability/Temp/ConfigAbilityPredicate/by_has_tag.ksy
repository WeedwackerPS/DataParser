meta:
  id: by_has_tag
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: tag
    type: aux_types::string
    if: has_field_tag
instances:
  has_field_tag: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
