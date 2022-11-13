meta:
  id: enum__item_use_op
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__item_use_op:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: item_use_op
enums:
  item_use_op:
    0: item_use_none
    1: item_use_accept_quest
    2: item_use_trigger_ability
    3: item_use_gain_avatar
    4: item_use_add_exp
    5: item_use_relive_avatar
    6: item_use_add_big_talent_point
    7: item_use_add_persist_stamina
    8: item_use_add_temporary_stamina
    9: item_use_add_cur_stamina
    10: item_use_add_cur_hp
    11: item_use_add_elem_energy
    12: item_use_add_all_energy
    13: item_use_add_dungeon_cond_time
    14: item_use_add_weapon_exp
    15: item_use_add_server_buff
    16: item_use_del_server_buff
    17: item_use_unlock_cook_recipe
    20: item_use_open_random_chest
    24: item_use_make_gadget
    25: item_use_add_item
    26: item_use_grant_select_reward
    27: item_use_add_select_item
    28: item_use_gain_flycloak
    29: item_use_gain_name_card
    30: item_use_unlock_paid_battle_pass_normal
    31: item_use_gain_card_product
    32: item_use_unlock_forge
    33: item_use_unlock_combine
    34: item_use_unlock_codex
    35: item_use_chest_select_item
    36: item_use_gain_resin_card_product
    37: item_use_add_reliquary_exp
    38: item_use_unlock_furniture_formula
    39: item_use_unlock_furniture_suite
    40: item_use_add_channeller_slab_buff
    41: item_use_gain_costume
    42: item_use_add_treasure_map_bonus_region_fragment
    43: item_use_combine_item
    44: item_use_unlock_home_module
