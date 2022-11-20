meta:
  id: by_avatar_body_type
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
  - id: body_type
    type: aux_types::string
    if: has_field_body_type
instances:
  has_field_body_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
