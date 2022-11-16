meta:
  id: enum__guide_navigation_check_type
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
    enum: guide_navigation_check_type
enums:
  guide_navigation_check_type:
    0: none
    1: open
    2: close
