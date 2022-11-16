meta:
  id: enum__blossom_chest_show_type
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
    enum: blossom_chest_show_type
enums:
  blossom_chest_show_type:
    0: blossom_chest_showtype_blossom
    1: blossom_chest_showtype_no_resin
