meta:
  id: enum__guide_widget_special_type
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
    enum: guide_widget_special_type
enums:
  guide_widget_special_type:
    0: normal
    1: slot
    2: character_avatar_btn
    3: character_func_btn
    4: character_avatar_btn_by_level
    5: button
    6: tab_item
    7: synthesis_list_item
    8: quest_select_item
    9: dyn_ui_item
    10: grid_scroller
    11: simple_list
