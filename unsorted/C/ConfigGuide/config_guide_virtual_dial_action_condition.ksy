types:
  config_guide_virtual_dial_action_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: virtual_dial_action
        type: enum__guide_virtual_dial_action
        if: has_field_virtual_dial_action
    instances:
      has_field_virtual_dial_action: # Field №0
        value: (bit_field & 0b1) != 0
