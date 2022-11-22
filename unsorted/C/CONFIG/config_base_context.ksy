types:
  config_base_context:
    seq:
      - id: bit_field
        type: u1
      - id: action_groups
        type: dict_of__aux_types__string_array_of__input_action_event__length_u
        if: has_field_action_groups
      - id: state_actions
        type: dict_of__aux_types__vlq_base128_le_s_device_action
        if: has_field_state_actions
      - id: enable_input_penetrate
        type: u1
        if: has_field_enable_input_penetrate
      - id: enable_joypad_virtual_cursor
        type: u1
        if: has_field_enable_joypad_virtual_cursor
    instances:
      has_field_action_groups: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_state_actions: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_enable_input_penetrate: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_enable_joypad_virtual_cursor: # Field №3
        value: (bit_field & 0b1000) != 0
