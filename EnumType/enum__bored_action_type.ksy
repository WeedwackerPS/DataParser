meta:
  id: enum__bored_action_type
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
    enum: bored_action_type
enums:
  bored_action_type:
    0: bored_action_none
    1: bored_action_create_monster
    2: bored_action_ambush
    3: bored_action_enhance_gather
