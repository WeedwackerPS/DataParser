meta:
  id: enum__mark_order
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_order:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mark_order
enums:
  mark_order:
    0: none
    1: local_player
    2: other_player
    3: quest_main
    4: quest_branch
    5: radar
    6: transport_goddess
    7: dungeon
    8: quest_event
    9: quest_activity
    10: quest_world
    11: quest_random
    12: ore
    13: activity
    14: custom
    15: monster
    16: transport_other
    17: npc_adventure
    18: npc_activity
    19: area
    20: default
    21: npc_other
    22: vehicle
    1001: homeworld_main_house
    1002: homeworld_farm_field
    1003: homeworld_furniture_suite
    1004: homeworld_djinn
    1005: homeworld_npc
    1006: homeworld_trans_point
