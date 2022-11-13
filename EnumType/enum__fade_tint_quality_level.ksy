meta:
  id: enum__fade_tint_quality_level
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__fade_tint_quality_level:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: fade_tint_quality_level
enums:
  fade_tint_quality_level:
    1: very_low
    2: low
    3: middle
    4: high
    5: very_high
    6: num
