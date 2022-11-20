meta:
  id: enum__mark_visibility_type
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
    enum: mark_visibility_type
enums:
  mark_visibility_type:
    0: none
    1: invisible
    2: around
    3: always
