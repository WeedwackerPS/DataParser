meta:
  id: enum__loading_tips_situation_type
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
    enum: loading_tips_situation_type
enums:
  loading_tips_situation_type:
    0: situation_type_none
    1: situation_type_common_transport
    2: situation_type_enter_quest_dungeon
    3: situation_type_enter_daily_dungeon
    4: situation_type_enter_tower
    5: situation_type_enter_room
    6: situation_type_login
    7: situation_type_logout
    8: situation_type_revive
    9: situation_type_enter_homeworld
    10: situation_type_enter_island
