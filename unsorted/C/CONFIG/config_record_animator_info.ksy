types:
  config_record_animator_info:
    seq:
      - id: bit_field
        type: u1
      - id: animator_parameter
        type: animator_parameters
        if: has_field_animator_parameter
      - id: current_state
        type: animator_record_state
        if: has_field_current_state
      - id: next_state
        type: animator_record_state
        if: has_field_next_state
      - id: transition_info
        type: animator_record_transition_info
        if: has_field_transition_info
    instances:
      has_field_animator_parameter: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_current_state: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_next_state: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_transition_info: # Field №3
        value: (bit_field & 0b1000) != 0
