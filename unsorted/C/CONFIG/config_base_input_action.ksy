types:
  config_base_input_action:
    seq:
      - id: bit_field
        type: u1
      - id: value_type
        type: enum__input_value_type
        if: has_field_value_type
      - id: description_text_id
        type: aux_types::string
        if: has_field_description_text_id
    instances:
      has_field_value_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_description_text_id: # Field №1
        value: (bit_field & 0b10) != 0
