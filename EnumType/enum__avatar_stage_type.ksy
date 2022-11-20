meta:
  id: enum__avatar_stage_type
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
    enum: avatar_stage_type
enums:
  avatar_stage_type:
    0: both
    1: current
    2: off_stage
