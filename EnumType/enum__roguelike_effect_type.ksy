meta:
  id: enum__roguelike_effect_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__roguelike_effect_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: roguelike_effect_type
enums:
  roguelike_effect_type:
    0: roguelike_effect_none
    1: roguelike_effect_static_combat
    2: roguelike_effect_dynamic_combat
    3: roguelike_effect_disable_spring_cell
    4: roguelike_effect_add_talent
    5: roguelike_effect_add_level_trap
    6: roguelike_effect_clear_level_trap
    7: roguelike_effect_random_clear_a_curse
    8: roguelike_effect_clear_all_curse
    9: roguelike_effect_add_rune_max_count
    10: roguelike_effect_add_rune_use_count
    11: roguelike_effect_fill_rune_use_count
    12: roguelike_effect_use_rune_prob_not_sub
    13: roguelike_effect_clear_mist
    14: roguelike_effect_add_resource
    15: roguelike_effect_random_avatar_noheal
    16: roguelike_effect_add_card_type_weight
    17: roguelike_effect_sub_refresh_card_cost
    18: roguelike_effect_change_gadget_num
    19: roguelike_effect_sub_curse_prob
    20: roguelike_effect_prob_free_refresh_card
    21: roguelike_effect_add_card_type_weight_room_first
    22: roguelike_effect_at_most_trap_count
    23: roguelike_effect_spring_and_boss
    24: roguelike_effect_at_least_store_count
    25: roguelike_effect_ban_guard
