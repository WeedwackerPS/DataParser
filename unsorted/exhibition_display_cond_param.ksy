types:
  exhibition_display_cond_param:
    seq:
      - id: bit_field
        type: u1
      - id: param_type
        type: enum__exhibition_display_cond_param_type
        if: has_field_param_type
      - id: param
        type: aux_types::string
        if: has_field_param
    instances:
      has_field_param_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
