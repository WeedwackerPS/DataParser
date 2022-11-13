meta:
  id: enum__explore_event_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__explore_event_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: explore_event_type
enums:
  explore_event_type:
    0: explore_event_none
    1: explore_event_unlock_point
    2: explore_event_open_chest
    3: explore_event_clear_group_monster
    4: explore_event_item_add
    5: explore_event_enter_force
    6: explore_event_open_chest_by_gadget
    7: explore_event_gather
