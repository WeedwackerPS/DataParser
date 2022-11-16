meta:
  id: enum__guest_button_show_type
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
    enum: guest_button_show_type
enums:
  guest_button_show_type:
    0: hide
    1: grap
