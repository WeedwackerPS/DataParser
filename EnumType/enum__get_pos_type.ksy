meta:
  id: enum__get_pos_type
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
    enum: get_pos_type
enums:
  get_pos_type:
    0: center
