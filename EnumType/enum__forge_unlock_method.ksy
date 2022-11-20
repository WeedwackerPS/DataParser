meta:
  id: enum__forge_unlock_method
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: forge_unlock_method
enums:
  forge_unlock_method:
    0: forge_unlock_none
    1: forge_unlock_quest
    2: forge_unlock_formula
