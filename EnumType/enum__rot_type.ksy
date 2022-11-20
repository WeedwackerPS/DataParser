meta:
  id: enum__rot_type
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
    enum: rot_type
enums:
  rot_type:
    0: rot_none
    1: rot_angle
    2: rot_round
