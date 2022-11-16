meta:
  id: enum__parent_quest_state
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
    enum: parent_quest_state
enums:
  parent_quest_state:
    0: parent_quest_state_none
    1: parent_quest_state_finished
    2: parent_quest_state_failed
    3: parent_quest_state_canceled
