types:
  config_gadget_do_attack_event:
    seq:
      - id: base
        type: config_base_gadget_trigger_action
      - id: bit_field
        type: u1
      - id: attack_event
        type: aux_types::string
        if: has_field_attack_event
    instances:
      has_field_attack_event: # Field №0
        value: (bit_field & 0b1) != 0
