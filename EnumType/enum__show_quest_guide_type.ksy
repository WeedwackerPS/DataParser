meta:
  id: enum__show_quest_guide_type
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
    enum: show_quest_guide_type
enums:
  show_quest_guide_type:
    0: quest_guide_item_enable
    1: quest_guide_item_disable
    2: quest_guide_item_move_hide
