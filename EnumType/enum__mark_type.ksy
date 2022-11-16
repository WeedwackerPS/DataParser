meta:
  id: enum__mark_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: mark_type
enums:
  mark_type:
    0: default
    1: trans_point
    2: quest
    3: custom
    4: local_avatar
    5: companion
    6: monster
    8: near_hint
    9: scene_point
    10: task
    11: boss
    12: talk
    13: packet_anchor
    14: widget
    15: flight_challenge
    16: hunting
    17: routine
    18: activity_search_region
    19: gallery_challenge
    20: homeworld_dynamic
    21: signal_point
    22: vehicle
    23: homeworld_furniture_suite
    24: activity
    25: homeworld_farm_field
