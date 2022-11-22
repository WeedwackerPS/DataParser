types:
  config_action_panel_state:
    seq:
      - id: bit_field
        type: u1
      - id: slot_map
        type: dict_of__enum__action_slot_type_array_of__config_action_button__length_u
        if: has_field_slot_map
      - id: slot_map_joypad_override
        type: dict_of__enum__action_slot_type_array_of__config_action_button__length_u
        if: has_field_slot_map_joypad_override
    instances:
      has_field_slot_map: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_slot_map_joypad_override: # Field №1
        value: (bit_field & 0b10) != 0
