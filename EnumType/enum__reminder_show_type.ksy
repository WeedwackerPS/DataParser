meta:
  id: enum__reminder_show_type
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
    enum: reminder_show_type
enums:
  reminder_show_type:
    0: none
    1: talk
    2: bubble
