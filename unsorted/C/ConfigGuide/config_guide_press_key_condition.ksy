types:
  config_guide_press_key_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: event_id
        type: enum__input_event_type
        if: has_field_event_id
      - id: end_event_id
        type: enum__input_event_type
        if: has_field_end_event_id
      - id: type
        type: enum__guide_key_click
        if: has_field_type
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_event_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_end_event_id: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_type: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_value: # Field №3
        value: (bit_field & 0b1000) != 0
