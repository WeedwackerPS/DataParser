types:
  sub_token_pre_process:
    seq:
      - id: bit_field
        type: u1
      - id: json_path
        type: token_json_path
        if: has_field_json_path
      - id: sub_tokens_to_pre_process
        type: array_of__aux_types__string__length_u
        if: has_field_sub_tokens_to_pre_process
    instances:
      has_field_json_path: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_sub_tokens_to_pre_process: # Field №1
        value: (bit_field & 0b10) != 0
