meta:
  id: enum__ability_formula
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: ability_formula
enums:
  ability_formula:
    0: none
    1: dummy_throw_speed
