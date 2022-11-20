meta:
  id: enum__text_show_place
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
    enum: text_show_place
enums:
  text_show_place:
    0: text_show_none
