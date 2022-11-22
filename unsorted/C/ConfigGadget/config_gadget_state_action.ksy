types:
  config_gadget_state_action:
    seq:
      - id: bit_field
        type: u1
      - id: gadget_state
        type: enum__gadget_state
        if: has_field_gadget_state
      - id: predicate
        type: disp__config_gadget_predicate
        if: has_field_predicate
    instances:
      has_field_gadget_state: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_predicate: # Field №1
        value: (bit_field & 0b10) != 0
