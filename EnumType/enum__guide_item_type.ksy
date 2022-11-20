meta:
  id: enum__guide_item_type
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
    enum: guide_item_type
enums:
  guide_item_type:
    0: normal
    1: weapon
    2: relic
    3: any
    4: material
