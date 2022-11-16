meta:
  id: enum__main_page_ui_disable_type
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
    enum: main_page_ui_disable_type
enums:
  main_page_ui_disable_type:
    0: none
    1: easy_touch
    2: action_panel
    3: team_btn
    4: message_tips
    5: intee_panel
    6: aim_container
    7: self_rtt
    8: top_btns
    9: map_info
    10: chat_info
    11: move
    12: game_info
