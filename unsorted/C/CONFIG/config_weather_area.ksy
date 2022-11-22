types:
  config_weather_area:
    seq:
      - id: bit_field
        type: u1
      - id: area_id
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id
      - id: is_accurate_border
        type: u1
        if: has_field_is_accurate_border
      - id: points
        type: array_of__point2d__length_u
        if: has_field_points
    instances:
      has_field_area_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_is_accurate_border: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_points: # Field №2
        value: (bit_field & 0b100) != 0
