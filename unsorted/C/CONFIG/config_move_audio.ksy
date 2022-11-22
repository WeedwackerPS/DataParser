types:
  config_move_audio:
    seq:
      - id: bit_field
        type: u1
      - id: start_event
        type: config_wwise_string
        if: has_field_start_event
      - id: stop_event
        type: config_wwise_string
        if: has_field_stop_event
      - id: move_state_param
        type: config_wwise_string
        if: has_field_move_state_param
      - id: fall_on_ground_event
        type: config_wwise_string
        if: has_field_fall_on_ground_event
    instances:
      has_field_start_event: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_stop_event: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_move_state_param: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_fall_on_ground_event: # Field №3
        value: (bit_field & 0b1000) != 0
