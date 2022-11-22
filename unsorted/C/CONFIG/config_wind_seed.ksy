types:
  config_wind_seed:
    seq:
      - id: bit_field
        type: u1
      - id: athuority_radius
        type: f4
        if: has_field_athuority_radius
    instances:
      has_field_athuority_radius: # Field №0
        value: (bit_field & 0b1) != 0
