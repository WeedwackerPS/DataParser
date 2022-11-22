types:
  config_base_input_event:
    seq:
      - id: bit_field
        type: u1
      - id: action_type
        type: enum__input_action_type
        if: has_field_action_type
      - id: action_event
        type: enum__action_event_type
        if: has_field_action_event
    instances:
      has_field_action_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_action_event: # Field №1
        value: (bit_field & 0b10) != 0
