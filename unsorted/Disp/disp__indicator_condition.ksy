types:
  disp__indicator_condition:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: indicator_condition
            1: indicator_condition_gadget_state
            2: indicator_condition_allow_interact
            3: indicator_condition_dummy_point_distance
            4: indicator_condition_avatar_distance
            5: indicator_condition_killed
            _: aux_types::error
