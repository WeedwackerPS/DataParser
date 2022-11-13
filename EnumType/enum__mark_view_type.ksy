meta:
  id: enum__mark_view_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_view_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mark_view_type
enums:
  mark_view_type:
    0: none
    1: map_mark_normal
    2: map_mark_local_avatar
    3: map_mark_local_sight
    4: map_mark_south
    5: map_mark_mini_other
    6: map_mark_custom
    7: other
