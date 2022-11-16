meta:
  id: enum__touch_interact_type
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
    enum: touch_interact_type
enums:
  touch_interact_type:
    0: default
    1: normal_chest
    2: flora_chest
    3: multiple_reward
    4: single_reward
    5: owner_only_reward
    6: gadget_chain
    7: widget_mp_support
    8: post_ui_interact_gadget_action
