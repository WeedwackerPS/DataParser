types:
  config_gadget_trigger_ability:
    seq:
      - id: base
        type: config_base_gadget_trigger_action
      - id: bit_field
        type: u1
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
    instances:
      has_field_ability_name: # Field №0
        value: (bit_field & 0b1) != 0
