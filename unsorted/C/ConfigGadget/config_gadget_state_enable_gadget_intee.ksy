types:
  config_gadget_state_enable_gadget_intee:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
