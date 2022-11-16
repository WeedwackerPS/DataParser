meta:
  id: enum__rogue_gadget_state_type
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
    enum: rogue_gadget_state_type
enums:
  rogue_gadget_state_type:
    0: rogue_gadget_state_none
    1: rogue_gadget_state_door_open
    2: rogue_gadget_state_door_close
    3: rogue_gadget_state_operator_default
    4: rogue_gadget_state_operator_in_challenge
    5: rogue_gadget_state_operator_finish_challenge
    6: rogue_gadget_state_operator_after_use
    7: rogue_gadget_state_operator_forbid
