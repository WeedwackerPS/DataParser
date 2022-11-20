meta:
  id: disp__config_action_point_select_type
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../ConfigActionPointSelect/config_action_point_select_type
    - ../ConfigActionPointSelect/select_action_point_by_id
    - ../ConfigActionPointSelect/select_action_point_by_self_pos
    - ../ConfigActionPointSelect/select_action_point_by_target_pos
    - ../ConfigActionPointSelect/select_action_point_by_away_from_avatar
    - ../ConfigActionPointSelect/select_action_point_by_target_orientation
    - ../ConfigActionPointSelect/select_action_point_by_all_avatars_orientation
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_action_point_select_type
        1: select_action_point_by_id
        2: select_action_point_by_self_pos
        3: select_action_point_by_target_pos
        4: select_action_point_by_away_from_avatar
        5: select_action_point_by_target_orientation
        6: select_action_point_by_all_avatars_orientation
        _: aux_types::error
