types:
  modifier_ref_jump:
    seq:
      - id: bit_field
        type: u1
      - id: json_path
        type: token_json_path
        if: has_field_json_path
      - id: event_to_jump
        type: aux_types::string
        if: has_field_event_to_jump
    instances:
      has_field_json_path: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_event_to_jump: # Field №1
        value: (bit_field & 0b10) != 0
