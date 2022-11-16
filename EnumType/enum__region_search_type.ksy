meta:
  id: enum__region_search_type
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
    enum: region_search_type
enums:
  region_search_type:
    0: region_search_type_none
    1: region_search_type_activity
