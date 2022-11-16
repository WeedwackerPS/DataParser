meta:
  id: enum__quest_content_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: quest_content_type
enums:
  quest_content_type:
    0: quest_content_none
    1: quest_content_kill_monster
    2: quest_content_complete_talk
    3: quest_content_monster_die
    4: quest_content_finish_plot
    5: quest_content_obtain_item
    6: quest_content_trigger_fire
    7: quest_content_clear_group_monster
    8: quest_content_not_finish_plot
    9: quest_content_enter_dungeon
    10: quest_content_enter_my_world
    11: quest_content_finish_dungeon
    12: quest_content_destroy_gadget
    13: quest_content_obtain_material_with_subtype
    14: quest_content_nick_name
    15: quest_content_worktop_select
    16: quest_content_seal_battle_result
    17: quest_content_enter_room
    18: quest_content_game_time_tick
    19: quest_content_fail_dungeon
    20: quest_content_lua_notify
    21: quest_content_team_dead
    22: quest_content_complete_any_talk
    23: quest_content_unlock_trans_point
    24: quest_content_add_quest_progress
    25: quest_content_interact_gadget
    26: quest_content_daily_task_comp_finish
    27: quest_content_finish_item_giving
    107: quest_content_skill
    109: quest_content_city_level_up
    110: quest_content_pattern_group_clear_monster
    111: quest_content_item_less_than
    112: quest_content_player_level_up
    113: quest_content_dungeon_open_statue
    114: quest_content_unlock_area
    115: quest_content_open_chest_with_gadget_id
    116: quest_content_unlock_trans_point_with_type
    117: quest_content_finish_daily_dungeon
    118: quest_content_finish_weekly_dungeon
    119: quest_content_quest_var_equal
    120: quest_content_quest_var_greater
    121: quest_content_quest_var_less
    122: quest_content_obtain_various_item
    123: quest_content_finish_tower_level
    124: quest_content_bargain_succ
    125: quest_content_bargain_fail
    126: quest_content_item_less_than_bargain
    127: quest_content_activity_trigger_failed
    128: quest_content_main_coop_enter_save_point
    129: quest_content_any_manual_transport
    130: quest_content_use_item
    131: quest_content_main_coop_enter_any_save_point
    132: quest_content_enter_my_home_world
    133: quest_content_enter_my_world_scene
    134: quest_content_time_var_gt_eq
    135: quest_content_time_var_pass_day
    136: quest_content_quest_state_equal
    137: quest_content_quest_state_not_equal
    138: quest_content_unlocked_recipe
    139: quest_content_not_unlocked_recipe
    140: quest_content_fishing_succ
    141: quest_content_enter_rogue_dungeon
    142: quest_content_use_widget
