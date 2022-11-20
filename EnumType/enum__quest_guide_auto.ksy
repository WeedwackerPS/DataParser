meta:
  id: enum__quest_guide_auto
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
    enum: quest_guide_auto
enums:
  quest_guide_auto:
    0: quest_guide_auto_none
    1: quest_guide_auto_enable
    2: quest_guide_auto_disable
