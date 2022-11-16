meta:
  id: enum__target_type
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
    enum: target_type
enums:
  target_type:
    0: none
    1: alliance
    2: enemy
    3: self
    4: self_camp
    5: all
    6: all_except_self
