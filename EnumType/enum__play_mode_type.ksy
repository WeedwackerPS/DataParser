meta:
  id: enum__play_mode_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: play_mode_type
enums:
  play_mode_type:
    0: normal
    1: sneak
    2: dvalin_s01fly_state
    3: bomber
    4: find_cat
    5: wild_sneak
    6: gliding_challenge_state
    7: look_at_camera_state
    8: fleur_fair_fall
    9: endora_state
    10: fleur_fair_balloon
    11: hide_and_seek
    12: hide_and_seek_ghost
    13: vehicle_skiff
    14: bounce_conjuring
    15: activity_aim_state
    16: electric_core_state
    17: fishing
    18: avatar_trans_move
    19: tail
