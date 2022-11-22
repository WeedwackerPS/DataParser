types:
  config_ai_mixin_set_float:
    seq:
      - id: bit_field
        type: u1
      - id: float_id
        type: aux_types::string
        if: has_field_float_id
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_float_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
