meta:
  id: enum__coop_point_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__coop_point_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: coop_point_type
enums:
  coop_point_type:
    0: point_none
    1: point_start
    2: point_middle
    3: point_end
