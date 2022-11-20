meta:
  id: enum__entity_appear_vision_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: entity_appear_vision_type
enums:
  entity_appear_vision_type:
    0: vision_none
    1: vision_meet
    2: vision_reborn
    3: vision_replace
    4: vision_waypoint_reborn
    5: vision_miss
    6: vision_die
    7: vision_gather_escape
    8: vision_refresh
    9: vision_transport
    10: vision_replace_die
