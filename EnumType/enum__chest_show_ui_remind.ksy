meta:
  id: enum__chest_show_ui_remind
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
    enum: chest_show_ui_remind
enums:
  chest_show_ui_remind:
    0: none
    1: normal
    2: all_show
