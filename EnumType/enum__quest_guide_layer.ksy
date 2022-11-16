meta:
  id: enum__quest_guide_layer
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
    enum: quest_guide_layer
enums:
  quest_guide_layer:
    0: quest_guide_layer_none
    1: quest_guide_layer_ui
    2: quest_guide_layer_scene
