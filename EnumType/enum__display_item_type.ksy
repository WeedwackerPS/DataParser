meta:
  id: enum__display_item_type
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
    enum: display_item_type
enums:
  display_item_type:
    0: reliquary_item
