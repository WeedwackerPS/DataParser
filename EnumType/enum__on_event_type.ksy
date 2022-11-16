meta:
  id: enum__on_event_type
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
    enum: on_event_type
enums:
  on_event_type:
    0: none
    1: hp
    2: exp_gain
    3: chest_open
    4: quest_finish
    5: pick_item
    6: hp_up
    7: hp_down
    8: energy_donw_by_skill
