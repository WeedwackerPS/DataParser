meta:
  id: enum__quest_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__quest_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: quest_cond_type
enums:
  quest_cond_type:
    0: quest_cond_none
    1: quest_cond_state_equal
    2: quest_cond_state_not_equal
    3: quest_cond_pack_have_item
    4: quest_cond_avatar_element_equal
    5: quest_cond_avatar_element_not_equal
    6: quest_cond_avatar_can_change_element
    7: quest_cond_city_level_equal_greater
    8: quest_cond_item_num_less_than
    9: quest_cond_daily_task_start
    10: quest_cond_open_state_equal
    11: quest_cond_daily_task_open
    12: quest_cond_daily_task_reward_can_get
    13: quest_cond_daily_task_reward_received
    14: quest_cond_player_level_reward_can_get
    15: quest_cond_exploration_reward_can_get
    16: quest_cond_is_world_owner
    17: quest_cond_player_level_equal_greater
    18: quest_cond_scene_area_unlocked
    19: quest_cond_item_giving_actived
    20: quest_cond_item_giving_finished
    21: quest_cond_is_daytime
    22: quest_cond_current_avatar
    23: quest_cond_current_area
    24: quest_cond_quest_var_equal
    25: quest_cond_quest_var_greater
    26: quest_cond_quest_var_less
    27: quest_cond_forge_have_finish
    28: quest_cond_daily_task_in_progress
    29: quest_cond_daily_task_finished
    30: quest_cond_activity_cond
    31: quest_cond_activity_open
    32: quest_cond_daily_task_var_gt
    33: quest_cond_daily_task_var_eq
    34: quest_cond_daily_task_var_lt
    35: quest_cond_bargain_item_gt
    36: quest_cond_bargain_item_eq
    37: quest_cond_bargain_item_lt
    38: quest_cond_complete_talk
    39: quest_cond_not_have_blossom_talk
    40: quest_cond_is_cur_blossom_talk
    41: quest_cond_quest_not_receive
    42: quest_cond_quest_server_cond_valid
    43: quest_cond_activity_client_cond
    44: quest_cond_quest_global_var_equal
    45: quest_cond_quest_global_var_greater
    46: quest_cond_quest_global_var_less
    47: quest_cond_personal_line_unlock
    48: quest_cond_city_reputation_request
    49: quest_cond_main_coop_start
    50: quest_cond_main_coop_enter_save_point
    51: quest_cond_city_reputation_level
    52: quest_cond_city_reputation_unlock
    53: quest_cond_lua_notify
    54: quest_cond_cur_climate
    55: quest_cond_activity_end
    56: quest_cond_coop_point_running
    57: quest_cond_gadget_talk_state_equal
    58: quest_cond_avatar_fetter_gt
    59: quest_cond_avatar_fetter_eq
    60: quest_cond_avatar_fetter_lt
    61: quest_cond_new_homeworld_moudle_unlock
    62: quest_cond_new_homeworld_level_reward
    63: quest_cond_new_homeworld_make_finish
    64: quest_cond_homeworld_npc_event
    65: quest_cond_time_var_gt_eq
    66: quest_cond_time_var_pass_day
    67: quest_cond_homeworld_npc_new_talk
    68: quest_cond_player_choose_male
    69: quest_cond_history_got_any_item
    70: quest_cond_learned_recipe
    71: quest_cond_lunarite_region_unlocked
    72: quest_cond_lunarite_has_region_hint_count
    73: quest_cond_lunarite_collect_finish
    74: quest_cond_lunarite_mark_all_finish
    75: quest_cond_new_homeworld_shop_item
