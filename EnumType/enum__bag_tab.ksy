meta:
  id: enum__bag_tab
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__bag_tab:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: bag_tab
enums:
  bag_tab:
    0: tab_none
    1: tab_weapon
    2: tab_equip
    3: tab_avatar
    4: tab_food
    5: tab_material
    6: tab_quest
    7: tab_consume
    8: tab_widget
    9: tab_homeworld
