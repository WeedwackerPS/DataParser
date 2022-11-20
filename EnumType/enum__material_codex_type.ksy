meta:
  id: enum__material_codex_type
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
    enum: material_codex_type
enums:
  material_codex_type:
    0: codex_collection
    1: codex_cooking_food
    2: codex_war_trophies
    3: codex_widget
