types:
  disp__config_base_gadget_trigger_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_gadget_trigger_action
            1: config_gadget_do_attack_event
            2: config_gadget_trigger_ability
            3: config_gadget_damage_by_attack_value
            _: aux_types::error
