types:
  score_strategy:
    seq:
      - id: bit_field
        type: u1
      - id: json_path
        type: token_json_path
        if: has_field_json_path
      - id: score_rules
        type: array_of__score_rule__length_u
        if: has_field_score_rules
    instances:
      has_field_json_path: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_score_rules: # Field №1
        value: (bit_field & 0b10) != 0
