meta:
  id: enum__group_kill_policy
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
    enum: group_kill_policy
enums:
  group_kill_policy:
    0: group_kill_none
    1: group_kill_all
    2: group_kill_monster
    3: group_kill_gadget
    4: group_kill_npc
