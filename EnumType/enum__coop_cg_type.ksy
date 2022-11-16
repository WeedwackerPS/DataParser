meta:
  id: enum__coop_cg_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: coop_cg_type
enums:
  coop_cg_type:
    0: cg_none
    1: cg_male
    2: cg_female
