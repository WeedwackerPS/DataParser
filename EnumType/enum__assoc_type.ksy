meta:
  id: enum__assoc_type
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
    enum: assoc_type
enums:
  assoc_type:
    0: assoc_type_none
    1: assoc_type_mondstadt
    2: assoc_type_liyue
    3: assoc_type_mainactor
    4: assoc_type_fatui
    5: assoc_type_inazuma
    6: assoc_type_ranger
