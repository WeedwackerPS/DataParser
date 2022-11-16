meta:
  id: enum__grass_quality_level
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
    enum: grass_quality_level
enums:
  grass_quality_level:
    1: very_low
    2: low
    3: middle
    4: high
    5: very_high
    6: ultra_high
    8: num
