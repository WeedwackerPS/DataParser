meta:
  id: enum__ability_formula
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ability_formula:
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
