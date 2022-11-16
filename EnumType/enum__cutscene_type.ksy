meta:
  id: enum__cutscene_type
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
    enum: cutscene_type
enums:
  cutscene_type:
    0: none
    1: time_line_asset
    2: time_line_prefab
    3: time_line_scene
    4: other
