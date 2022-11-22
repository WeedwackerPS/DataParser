types:
  config_ai_react_action_point_data:
    seq:
      - id: bit_field
        type: u1
      - id: react_list
        type: array_of__config_ai_pick_action_point_criteria__length_u
        if: has_field_react_list
    instances:
      has_field_react_list: # Field №0
        value: (bit_field & 0b1) != 0
