meta:
  id: enum__ban_type
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
    enum: ban_type
enums:
  ban_type:
    0: ban_invalid
    1: ban_transport
    2: ban_goto_scene
    3: ban_npc_interaction
    4: ban_goto_multiplayer
