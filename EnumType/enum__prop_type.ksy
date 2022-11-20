meta:
  id: enum__prop_type
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
    enum: prop_type
enums:
  prop_type:
    0: prop_none
    1001: prop_exp
    1002: prop_break_level
    1003: prop_satiation_val
    1004: prop_satiation_penalty_time
    2001: prop_gear_start_val
    2002: prop_gear_stop_val
    4001: prop_level
    10001: prop_last_change_avatar_time
    10002: prop_max_spring_volume
    10003: prop_cur_spring_volume
    10004: prop_is_spring_auto_use
    10005: prop_spring_auto_use_percent
    10006: prop_is_flyable
    10007: prop_is_weather_locked
    10008: prop_is_game_time_locked
    10009: prop_is_transferable
    10010: prop_max_stamina
    10011: prop_cur_persist_stamina
    10012: prop_cur_temporary_stamina
    10013: prop_player_level
    10014: prop_player_exp
    10015: prop_player_hcoin
    10016: prop_player_scoin
    10017: prop_player_mp_setting_type
    10018: prop_is_mp_mode_available
    10019: prop_player_world_level
    10020: prop_player_resin
    10022: prop_player_wait_sub_hcoin
    10023: prop_player_wait_sub_scoin
    10024: prop_is_only_mp_with_ps_player
    10025: prop_player_mcoin
    10026: prop_player_wait_sub_mcoin
    10027: prop_player_legendary_key
    10028: prop_is_has_first_share
    10029: prop_player_forge_point
    10035: prop_cur_climate_meter
    10036: prop_cur_climate_type
    10037: prop_cur_climate_area_id
    10038: prop_cur_climate_area_climate_type
    10039: prop_player_world_level_limit
    10040: prop_player_world_level_adjust_cd
    10041: prop_player_legendary_daily_task_num
    10042: prop_player_home_coin
    10043: prop_player_wait_sub_home_coin
    10044: prop_is_auto_unlock_specific_equip
