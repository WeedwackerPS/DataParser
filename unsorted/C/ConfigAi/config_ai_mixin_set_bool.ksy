types:
  config_ai_mixin_set_bool:
    seq:
      - id: bit_field
        type: u1
      - id: bool_id
        type: aux_types::string
        if: has_field_bool_id
      - id: value
        type: u1
        if: has_field_value
    instances:
      has_field_bool_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
