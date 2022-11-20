meta:
  id: enum__refresh_index_type
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
    enum: refresh_index_type
enums:
  refresh_index_type:
    0: refreshindex_monster
    1: refreshindex_gadget
