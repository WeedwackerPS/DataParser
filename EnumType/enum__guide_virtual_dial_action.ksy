meta:
  id: enum__guide_virtual_dial_action
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
    enum: guide_virtual_dial_action
enums:
  guide_virtual_dial_action:
    0: none
    1: open_map
    2: open_quest_book
    3: open_character
    4: open_bag
    5: switch_element_view
    6: open_tutorial
    7: open_gacha
    8: open_adventure_book
    9: to_avatar1
    10: to_avatar2
    11: to_avatar3
    12: to_avatar4
    13: to_avatar5
    14: open_battle_pass
    15: open_multiplayer
    16: open_dungeon_factor
    17: open_activity_normal
    18: press_quick_use_button
    19: press_activity_skill_button
    20: homeworld_editor
