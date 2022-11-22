types:
  config_predicate_by_interact:
    seq:
      - id: base
        type: config_gadget_predicate
      - id: bit_field
        type: u1
      - id: is_enable_interact
        type: u1
        if: has_field_is_enable_interact
    instances:
      has_field_is_enable_interact: # Field №0
        value: (bit_field & 0b1) != 0
