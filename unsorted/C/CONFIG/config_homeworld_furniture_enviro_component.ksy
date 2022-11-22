types:
  config_homeworld_furniture_enviro_component:
    seq:
      - id: bit_field
        type: u1
      - id: on_day
        type: u1
        if: has_field_on_day
      - id: weather_bits
        type: u1
        if: has_field_weather_bits
      - id: type
        type: u1
        if: has_field_type
      - id: disable_dist
        type: f4
        if: has_field_disable_dist
    instances:
      has_field_on_day: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_weather_bits: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_type: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_disable_dist: # Field №3
        value: (bit_field & 0b1000) != 0
