types:
  disp__config_gadget_state_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_gadget_state_action
            1: config_gadget_state_fire_effect
            2: config_gadget_state_set_anim_trigger
            3: config_gadget_state_set_anim_int
            4: config_gadget_state_fire_ai_sound
            5: config_gadget_state_enable_gadget_intee
            6: config_gadget_state_enable_action
            7: config_gadget_state_send_effect_trigger
            _: aux_types::error
