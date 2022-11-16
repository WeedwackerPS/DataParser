meta:
  id: enum__quest_state
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
    enum: quest_state
enums:
  quest_state:
    0: quest_state_none
    1: quest_state_unstarted
    2: quest_state_unfinished
    3: quest_state_finished
    4: quest_state_failed
