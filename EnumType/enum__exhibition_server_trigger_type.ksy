meta:
  id: enum__exhibition_server_trigger_type
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
    enum: exhibition_server_trigger_type
enums:
  exhibition_server_trigger_type:
    0: exhibition_server_trigger_none
    1: exhibition_server_trigger_test
    2: exhibition_server_trigger_hide_and_seek_hunter_win_last_time
    3: exhibition_server_trigger_hide_and_seek_hider_survival_time
    4: exhibition_server_trigger_hide_and_seek_win
    5: exhibition_server_trigger_damage_by_group_configid
    6: exhibition_server_trigger_damage_by_monsterid
    7: exhibition_server_trigger_chess_success
    8: exhibition_server_trigger_chess_settle_round
    9: exhibition_server_trigger_chess_escaped_monsters
    10: exhibition_server_trigger_chess_pick_curse_card_count
    11: exhibition_server_trigger_chess_pick_challenge_card_count
    12: exhibition_server_trigger_chess_obtain_building_points
    13: exhibition_server_trigger_chess_pick_ssr_card_count
    14: exhibition_server_trigger_chess_last_round_kill_stage_cost_time
