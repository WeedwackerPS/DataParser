types:
  modifier_event_ref_jump:
    seq:
      - id: bit_field
        type: u1
      - id: json_path
        type: token_json_path
        if: has_field_json_path
      - id: event_jump_dict
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_event_jump_dict
    instances:
      has_field_json_path: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_event_jump_dict: # Field №1
        value: (bit_field & 0b10) != 0
