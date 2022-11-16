meta:
  id: enum__region_search_recycle_type
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
    enum: region_search_recycle_type
enums:
  region_search_recycle_type:
    0: region_search_recycle_none
    1: region_search_recycle_progress
