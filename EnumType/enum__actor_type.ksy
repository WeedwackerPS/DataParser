meta:
  id: enum__actor_type
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
    enum: actor_type
enums:
  actor_type:
    0: invalid
    1: base_entity
    2: npc_actor
    3: quest_actor
    4: global_actor
    5: gadget_actor
    6: sub_global_actor
    7: cutscene_actor
    8: interaction_actor
    9: npcglobal_actor
