meta:
  id: enum__ability_targetting
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ability_targetting:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ability_targetting
enums:
  ability_targetting:
    0: self
    1: caster
    2: target
    3: self_attack_target
    4: other
    5: applier
    6: owner
    7: cur_team_avatars
    8: cur_local_avatar
    9: origin_owner
    10: team
    11: target_owner
    12: target_origin_owner
    13: all_player_avatars
    14: all_teams
    15: remote_teams
    16: target_team
    17: caster_owner
    18: caster_origin_owner
    19: mp_level
    20: vehicle
