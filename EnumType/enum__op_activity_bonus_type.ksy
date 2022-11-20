meta:
  id: enum__op_activity_bonus_type
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
    enum: op_activity_bonus_type
enums:
  op_activity_bonus_type:
    0: type_none
    1: type_daily
    2: type_sum
