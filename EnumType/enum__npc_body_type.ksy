meta:
  id: enum__npc_body_type
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
    enum: npc_body_type
enums:
  npc_body_type:
    0: none
    1: avatar_male
    2: avatar_lady
    3: avatar_boy
    4: avatar_girl
    5: avatar_loli
    6: avatar_paimon
    7: npc_male
    8: npc_female
    9: npc_muscleman
    10: npc_elder
    11: npc_child
    12: barbara
    13: bennett
    14: chongyun
    15: noel
    16: diona
    17: sayu
