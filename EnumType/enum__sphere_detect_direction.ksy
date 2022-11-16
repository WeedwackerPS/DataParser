meta:
  id: enum__sphere_detect_direction
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
    enum: sphere_detect_direction
enums:
  sphere_detect_direction:
    0: none
    1: center_to_side
