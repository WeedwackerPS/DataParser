meta:
  id: enum__button_guide_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__button_guide_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: button_guide_type
enums:
  button_guide_type:
    0: normal
    1: red
    2: blink
    3: bubble
