meta:
  id: enum__drop_elem_ball_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__drop_elem_ball_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: drop_elem_ball_type
enums:
  drop_elem_ball_type:
    0: level_control
    1: big_world_only
    2: force_drop