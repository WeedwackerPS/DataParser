meta:
  id: enum__cutscene_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__cutscene_type:
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