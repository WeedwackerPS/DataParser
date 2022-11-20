meta:
  id: enum__bonus_source_type
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
    enum: bonus_source_type
enums:
  bonus_source_type:
    0: bonus_source_none
    1: bonus_source_reunion
    2: bonus_source_op_activity
