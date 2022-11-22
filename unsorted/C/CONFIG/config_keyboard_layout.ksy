types:
  config_keyboard_layout:
    seq:
      - id: bit_field
        type: u1
      - id: config_keyboard_layouts
        type: dict_of__enum__keyboard_type_config_keyboard_layout_item
        if: has_field_config_keyboard_layouts
      - id: input_action_type_groups
        type: dict_of__enum__input_action_group_type_array_of__enum__input_action_type__length_u
        if: has_field_input_action_type_groups
    instances:
      has_field_config_keyboard_layouts: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_input_action_type_groups: # Field №1
        value: (bit_field & 0b10) != 0
