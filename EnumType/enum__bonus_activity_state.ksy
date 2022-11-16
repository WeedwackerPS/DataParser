meta:
  id: enum__bonus_activity_state
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: bonus_activity_state
enums:
  bonus_activity_state:
    0: bonus_activity_state_none
    1: bonus_activity_state_unstarted
    2: bonus_activity_state_unfinished
    3: bonus_activity_state_unrewarded
    4: bonus_activity_state_rewarded
