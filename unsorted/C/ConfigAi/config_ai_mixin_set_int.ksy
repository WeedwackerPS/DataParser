types:
  config_ai_mixin_set_int:
    seq:
      - id: bit_field
        type: u1
      - id: int_id
        type: aux_types::string
        if: has_field_int_id
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
    instances:
      has_field_int_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
