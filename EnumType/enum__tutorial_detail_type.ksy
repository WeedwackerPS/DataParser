meta:
  id: enum__tutorial_detail_type
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
    enum: tutorial_detail_type
enums:
  tutorial_detail_type:
    0: tut_default
    1: tut_full_screen
