meta:
  id: enum__point_map_visibility
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__point_map_visibility:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: point_map_visibility
enums:
  point_map_visibility:
    0: normal
    1: on_unlocked
    2: never
