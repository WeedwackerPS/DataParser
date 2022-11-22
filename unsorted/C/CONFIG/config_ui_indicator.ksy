types:
  config_ui_indicator:
    seq:
      - id: bit_field
        type: u1
      - id: icon
        type: template_param_string
        if: has_field_icon
      - id: distance_show
        type: enum__indicator_distance_info_type
        if: has_field_distance_show
      - id: follow_move
        type: u1
        if: has_field_follow_move
      - id: indicator
        type: array_of__indicator_logic__length_u
        if: has_field_indicator
    instances:
      has_field_icon: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_distance_show: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_follow_move: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_indicator: # Field №3
        value: (bit_field & 0b1000) != 0
