meta:
  id: enum__motion_blur_quality
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__motion_blur_quality:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: motion_blur_quality
enums:
  motion_blur_quality:
    0: low
    1: high
    2: very_high
