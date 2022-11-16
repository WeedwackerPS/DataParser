meta:
  id: enum__moonfin_trial_activity_level_type
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
    enum: moonfin_trial_activity_level_type
enums:
  moonfin_trial_activity_level_type:
    0: moonfin_trial_activity_level_type_quest
    1: moonfin_trial_activity_level_type_challenge_total
    2: moonfin_trial_activity_level_type_challenge_specific
    3: moonfin_trial_activity_level_type_challenge_continuous
    4: moonfin_trial_activity_level_type_special_fish
