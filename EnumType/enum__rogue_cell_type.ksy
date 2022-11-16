meta:
  id: enum__rogue_cell_type
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
    enum: rogue_cell_type
enums:
  rogue_cell_type:
    0: rogue_cell_type_none
    1: rogue_cell_type_init
    2: rogue_cell_type_store
    3: rogue_cell_type_elite
    4: rogue_cell_type_normal
    5: rogue_cell_type_spring
    6: rogue_cell_type_boss
    7: rogue_cell_type_chest
