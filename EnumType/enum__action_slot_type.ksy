meta:
  id: enum__action_slot_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__action_slot_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: action_slot_type
enums:
  action_slot_type:
    0: slot_am
    1: slot1
    2: slot2
    3: slot3
    4: slot4
    5: slot5
    6: slot_left
    7: slot_charge
    8: slot_quick_use
