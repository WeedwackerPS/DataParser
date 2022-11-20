meta:
  id: enum__shop_precondition
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
    enum: shop_precondition
enums:
  shop_precondition:
    0: shop_precondition_none
    1: shop_precondition_specify
    2: shop_precondition_rest
    3: shop_precondition_sheet_rest
    4: shop_precondition_sheet_teasure_map_region
    5: shop_precondition_home_level
    6: shop_precondition_quest_finish
    7: shop_precondition_sheet_fleur_fair_watcher_finish
    8: shop_precondition_quest_finish_all
    9: shop_precondition_quest_finish_any
