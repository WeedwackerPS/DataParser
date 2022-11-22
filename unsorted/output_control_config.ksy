types:
  output_control_config:
    seq:
      - id: bit_field
        type: u1
      - id: daily_output_limit
        type: optional_limit_config
        if: has_field_daily_output_limit
      - id: total_output_limit
        type: optional_limit_config
        if: has_field_total_output_limit
      - id: activity_output_limit
        type: optional_limit_config
        if: has_field_activity_output_limit
    instances:
      has_field_daily_output_limit: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_total_output_limit: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_activity_output_limit: # Field №2
        value: (bit_field & 0b100) != 0
