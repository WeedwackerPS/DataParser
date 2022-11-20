meta:
  id: enum__quality_type
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
    enum: quality_type
enums:
  quality_type:
    0: quality_none
    1: quality_white
    2: quality_green
    3: quality_blue
    4: quality_purple
    5: quality_orange
    105: quality_orange_sp
