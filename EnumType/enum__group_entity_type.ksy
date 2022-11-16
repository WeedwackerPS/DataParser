meta:
  id: enum__group_entity_type
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
    enum: group_entity_type
enums:
  group_entity_type:
    0: none
    1: monster
    2: npc
    3: gadget
    4: trigger
