meta:
  id: enum__blink_hit_scene_test_type
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
    enum: blink_hit_scene_test_type
enums:
  blink_hit_scene_test_type:
    0: blink_hit_scene_test_by_straight_line
    1: blink_hit_scene_test_by_three_segments
