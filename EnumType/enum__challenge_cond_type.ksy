meta:
  id: enum__challenge_cond_type
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
    enum: challenge_cond_type
enums:
  challenge_cond_type:
    0: challenge_cond_none
    1: challenge_cond_in_time
    2: challenge_cond_all_time
    3: challenge_cond_kill_count
    4: challenge_cond_survive
    5: challenge_cond_time_inc
    6: challenge_cond_kill_fast
    7: challenge_cond_down_less
    8: challenge_cond_beaten_less
    9: challenge_cond_unnatural_count
    10: challenge_cond_frozen_less
    11: challenge_cond_kill_monster
    12: challenge_cond_trigger
    13: challenge_cond_guard_hp
    14: challenge_cond_time_dec
    15: challenge_cond_child_succ
    16: challenge_cond_child_fail
    17: challenge_cond_flight_get_badge
    18: challenge_cond_monster_damage_count
    19: challenge_cond_element_reaction_cont
    20: challenge_cond_freeze_enemy_in_time
    21: challenge_cond_crystal_element_reaction_count
    22: challenge_cond_sheild_absorb_damage_count
    23: challenge_cond_swirl_element_reaction_count
    24: challenge_cond_die_less
