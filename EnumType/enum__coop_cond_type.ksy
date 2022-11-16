meta:
  id: enum__coop_cond_type
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
    enum: coop_cond_type
enums:
  coop_cond_type:
    0: coop_cond_none
    1: coop_cond_temperament_compare
    2: coop_cond_confidence_compare
    3: coop_cond_ending_finish
    4: coop_cond_quest_finish
    5: coop_cond_item_num_compare
    6: coop_cond_player_level_compare
    7: coop_cond_fetter_compare
    8: coop_cond_temp_value_compare
