meta:
  id: enum__hit_box_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: hit_box_type
enums:
  hit_box_type:
    0: normal
    1: head
