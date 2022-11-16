meta:
  id: enum__voice_positioning
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
    enum: voice_positioning
enums:
  voice_positioning:
    0: two_dimensional
    1: three_dimensional
    2: tutorial_special
    3: three_dimensional_passby
    4: inner_monologue
