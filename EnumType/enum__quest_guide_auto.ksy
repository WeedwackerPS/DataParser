meta:
  id: enum__quest_guide_auto
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__quest_guide_auto:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: quest_guide_auto
enums:
  quest_guide_auto:
    0: quest_guide_auto_none
    1: quest_guide_auto_enable
    2: quest_guide_auto_disable
