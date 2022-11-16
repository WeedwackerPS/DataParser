meta:
  id: enum__gadget_type
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
    enum: gadget_type
enums:
  gadget_type:
    0: gadget_none
    1: gadget_world_chect
    2: gadget_dungeon_secret_chest
    3: gadget_dungeon_pass_chest
