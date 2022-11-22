types:
  template_param:
    seq:
      - id: bit_field
        type: u1
      - id: param
        type: aux_types::string
        if: has_field_param
    instances:
      has_field_param: # Field №0
        value: (bit_field & 0b1) != 0
