meta:
  id: enum__mist_trial_statistic_type
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
    enum: mist_trial_statistic_type
enums:
  mist_trial_statistic_type:
    0: mist_trial_stat_type_none
    1: mist_trial_stat_type_finish_challenge_count
    2: mist_trial_stat_type_attack_by_gear_count
    3: mist_trial_stat_type_kill_monster_by_attack_tag
    4: mist_trial_stat_type_recover_hp_count
    5: mist_trial_stat_type_kill_shield_count
    6: mist_trial_stat_type_be_hurt_count
    7: mist_trial_stat_type_kill_monster_by_shield
    8: mist_trial_stat_type_disable_gear_count
    9: mist_trial_stat_type_element_reaction_type_num
