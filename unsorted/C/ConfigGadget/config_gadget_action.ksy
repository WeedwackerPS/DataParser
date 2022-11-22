types:
  config_gadget_action:
    seq:
      - id: bit_field
        type: u1
      - id: trigger_enter_action_list
        type: array_of__disp__config_gadget_state_action__length_u
        if: has_field_trigger_enter_action_list
      - id: gadget_state_action_list
        type: array_of__disp__config_gadget_state_action__length_u
        if: has_field_gadget_state_action_list
      - id: platform_action_list
        type: array_of__disp__config_gadget_state_action__length_u
        if: has_field_platform_action_list
      - id: interact_action_list
        type: array_of__disp__config_gadget_state_action__length_u
        if: has_field_interact_action_list
      - id: post_ui_interact_action_list
        type: array_of__disp__config_gadget_state_action__length_u
        if: has_field_post_ui_interact_action_list
    instances:
      has_field_trigger_enter_action_list: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_gadget_state_action_list: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_platform_action_list: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_interact_action_list: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_post_ui_interact_action_list: # Field №4
        value: (bit_field & 0b10000) != 0
