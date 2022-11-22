types:
  config_polygon_area:
    seq:
      - id: bit_field
        type: u1
      - id: min_area
        type: vector
        if: has_field_min_area
      - id: max_area
        type: vector
        if: has_field_max_area
      - id: road_points
        type: array_of__vector__length_u
        if: has_field_road_points
    instances:
      has_field_min_area: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_max_area: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_road_points: # Field №2
        value: (bit_field & 0b100) != 0
