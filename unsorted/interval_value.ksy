types:
  interval_value:
    seq:
      - id: bit_field
        type: u1
      - id: low
        type: f4
        if: has_field_low
      - id: high
        type: f4
        if: has_field_high
    instances:
      has_field_low: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_high: # Field №1
        value: (bit_field & 0b10) != 0
