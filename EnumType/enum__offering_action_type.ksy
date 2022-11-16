meta:
  id: enum__offering_action_type
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
    enum: offering_action_type
enums:
  offering_action_type:
    0: offering_action_none
    1: offering_action_open_routine
    2: offering_action_close_routine
    3: offering_action_notify_group
    4: offering_action_set_gadget_chain_level
