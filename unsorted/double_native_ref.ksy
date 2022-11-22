types:
  double_native_ref:
    seq:
      - id: bit_field
        type: u1
      - id: value
        type: u1 # TODO: pointer types are not supported!
        if: has_field_value
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b1) != 0
