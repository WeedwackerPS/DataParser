types:
  config_action_button:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__action_btn_type
        if: has_field_type
      - id: force_show
        type: u1
        if: has_field_force_show
      - id: only_handle_input
        type: u1
        if: has_field_only_handle_input
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_force_show: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_only_handle_input: # Field №2
        value: (bit_field & 0b100) != 0
