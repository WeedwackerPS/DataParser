meta:
  id: enum__camera_shake_type
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
    enum: camera_shake_type
enums:
  camera_shake_type:
    0: center
    1: custom_vector
    2: hit_vector
