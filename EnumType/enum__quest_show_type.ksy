meta:
  id: enum__quest_show_type
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
    enum: quest_show_type
enums:
  quest_show_type:
    0: quest_show
    1: quest_hidden
