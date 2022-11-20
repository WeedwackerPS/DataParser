meta:
  id: enum__hit_level
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
    enum: hit_level
enums:
  hit_level:
    0: mute
    1: shake
    2: light
    3: heavy
    4: air
