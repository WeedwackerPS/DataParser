meta:
  id: enum__quest_guide_style
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__quest_guide_style:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: quest_guide_style
enums:
  quest_guide_style:
    0: quest_guide_style_none
    1: quest_guide_style_start
    2: quest_guide_style_target
    3: quest_guide_style_finish
    4: quest_guide_style_point
