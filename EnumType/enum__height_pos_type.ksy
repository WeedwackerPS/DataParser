meta:
  id: enum__height_pos_type
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
    enum: height_pos_type
enums:
  height_pos_type:
    0: bottom
    1: center
