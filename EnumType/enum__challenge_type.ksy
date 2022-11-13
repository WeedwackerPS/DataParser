meta:
  id: enum__challenge_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__challenge_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: challenge_type
enums:
  challenge_type:
    0: challenge_none
    1: challenge_kill_count
    2: challenge_kill_count_in_time
    3: challenge_survive
    4: challenge_time_fly
    5: challenge_kill_count_fast
    6: challenge_kill_count_frozen_less
    7: challenge_kill_monster_in_time
    8: challenge_trigger_in_time
    9: challenge_guard_hp
    10: challenge_kill_count_guard_hp
    11: challenge_trigger_in_time_fly
    12: challenge_trigger2_avoid_trigger1
    13: challenge_father_succ_in_time
    14: challenge_monster_damage_count
    15: challenge_element_reaction_count
    16: challenge_freeze_enemy_in_time
    17: challenge_crystal_element_reaction_count
    18: challenge_sheild_absorb_damage_count
    19: challenge_element_trial
    20: challenge_swirl_element_reaction_count
    21: challenge_die_less_in_time
    22: challenge_survive_in_time
    23: challenge_trigger_count
