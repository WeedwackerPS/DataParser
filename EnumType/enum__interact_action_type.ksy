meta:
  id: enum__interact_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__interact_action_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: interact_action_type
enums:
  interact_action_type:
    0: interact_action_none
    1: interact_action_state
    2: interact_action_set_gadget_chain_buff
