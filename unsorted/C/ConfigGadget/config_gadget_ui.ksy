types:
  config_gadget_ui:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: gadget_ui_btn_cfg_path
        type: aux_types::string
        if: has_field_gadget_ui_btn_cfg_path
      - id: ui_name
        type: aux_types::string
        if: has_field_ui_name
      - id: always_interactive
        type: u1
        if: has_field_always_interactive
      - id: on_touch
        type: enum__touch_interact_type
        if: has_field_on_touch
      - id: open_reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_open_reward_id
      - id: touch_params
        type: array_of__aux_types__string__length_u
        if: has_field_touch_params
      - id: can_interact_in_combat
        type: u1
        if: has_field_can_interact_in_combat
      - id: can_only_interact_in_stand_still
        type: u1
        if: has_field_can_only_interact_in_stand_still
      - id: post_gadget_action_params
        type: array_of__f4__length_u
        if: has_field_post_gadget_action_params
    instances:
      has_field_gadget_ui_btn_cfg_path: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_ui_name: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_always_interactive: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_on_touch: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_open_reward_id: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_touch_params: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_can_interact_in_combat: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_can_only_interact_in_stand_still: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_post_gadget_action_params: # Field №8
        value: (bit_field.value & 0b100000000) != 0
