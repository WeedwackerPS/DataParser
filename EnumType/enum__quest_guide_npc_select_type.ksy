meta:
  id: enum__quest_guide_npc_select_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: quest_guide_npc_select_type
enums:
  quest_guide_npc_select_type:
    0: select_npc_none
    1: select_npc_by_playermale
