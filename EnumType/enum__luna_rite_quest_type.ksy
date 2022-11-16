meta:
  id: enum__luna_rite_quest_type
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
    enum: luna_rite_quest_type
enums:
  luna_rite_quest_type:
    0: luna_rite_quest_type_mainline
    1: luna_rite_quest_type_bigworld
