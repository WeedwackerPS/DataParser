meta:
  id: enum__board_event_type
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
    enum: board_event_type
enums:
  board_event_type:
    0: board_event_none
    1: board_event_kill_monster
    101: board_event_game
    102: board_event_gather
    104: board_event_accelerate
    105: board_event_use_item
    106: board_event_change_avatar
    107: board_event_skill
    108: board_event_region
