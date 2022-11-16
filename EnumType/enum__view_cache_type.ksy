meta:
  id: enum__view_cache_type
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
    enum: view_cache_type
enums:
  view_cache_type:
    0: lru_cached
    1: always_cached
    2: dont_cache
