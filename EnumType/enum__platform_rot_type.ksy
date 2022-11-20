meta:
  id: enum__platform_rot_type
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
    enum: platform_rot_type
enums:
  platform_rot_type:
    0: platform_rot_none
    1: platform_rot_speed
    2: platform_rot_round
