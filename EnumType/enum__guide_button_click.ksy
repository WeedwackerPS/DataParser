meta:
  id: enum__guide_button_click
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
    enum: guide_button_click
enums:
  guide_button_click:
    0: click
    1: press_down
    2: charge
    3: toggle
