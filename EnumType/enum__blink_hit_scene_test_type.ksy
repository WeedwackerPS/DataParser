meta:
  id: enum__blink_hit_scene_test_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__blink_hit_scene_test_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: blink_hit_scene_test_type
enums:
  blink_hit_scene_test_type:
    0: blink_hit_scene_test_by_straight_line
    1: blink_hit_scene_test_by_three_segments
