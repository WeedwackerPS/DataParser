meta:
  id: enum__hp_bar_style
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
    enum: hp_bar_style
enums:
  hp_bar_style:
    0: auto
    1: elite
    2: boss
    3: friendly
    4: element_charge
