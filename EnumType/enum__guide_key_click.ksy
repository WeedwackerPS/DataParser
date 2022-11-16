meta:
  id: enum__guide_key_click
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
    enum: guide_key_click
enums:
  guide_key_click:
    0: press_down
    1: click
    2: charge
