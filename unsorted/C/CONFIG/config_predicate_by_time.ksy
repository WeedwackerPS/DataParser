types:
  config_predicate_by_time:
    seq:
      - id: base
        type: config_gadget_predicate
      - id: bit_field
        type: u1
      - id: is_night
        type: u1
        if: has_field_is_night
    instances:
      has_field_is_night: # Field №0
        value: (bit_field & 0b1) != 0
