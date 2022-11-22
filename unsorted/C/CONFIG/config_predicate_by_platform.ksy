types:
  config_predicate_by_platform:
    seq:
      - id: base
        type: config_gadget_predicate
      - id: bit_field
        type: u1
      - id: is_start
        type: u1
        if: has_field_is_start
    instances:
      has_field_is_start: # Field №0
        value: (bit_field & 0b1) != 0
