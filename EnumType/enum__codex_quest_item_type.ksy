meta:
  id: enum__codex_quest_item_type
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
    enum: codex_quest_item_type
enums:
  codex_quest_item_type:
    1: text_center
    2: text_left
    3: text_right
    4: single_dialog
    5: multi_dialog
    6: single_dialog_gender
    7: multi_dialog_gender
