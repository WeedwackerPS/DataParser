types:
  config_inter_fade:
    seq:
      - id: bit_field
        type: u1
      - id: start_fade_in_duration
        type: f4
        if: has_field_start_fade_in_duration
      - id: start_fade_out_duration
        type: f4
        if: has_field_start_fade_out_duration
    instances:
      has_field_start_fade_in_duration: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_start_fade_out_duration: # Field №1
        value: (bit_field & 0b10) != 0
