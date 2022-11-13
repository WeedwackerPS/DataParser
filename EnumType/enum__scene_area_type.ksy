meta:
  id: enum__scene_area_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__scene_area_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: scene_area_type
enums:
  scene_area_type:
    0: normal
    1: all
    2: other
