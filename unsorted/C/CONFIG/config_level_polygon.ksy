types:
  config_level_polygon:
    seq:
      - id: bit_field
        type: u1
      - id: local_polygon_id
        type: aux_types::vlq_base128_le_u
        if: has_field_local_polygon_id
      - id: y_max
        type: f4
        if: has_field_y_max
      - id: y_min
        type: f4
        if: has_field_y_min
      - id: vertices
        type: array_of__vector__length_u
        if: has_field_vertices
      - id: tags
        type: array_of__enum__config_level_polygon_tag__length_u
        if: has_field_tags
    instances:
      has_field_local_polygon_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_y_max: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_y_min: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_vertices: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_tags: # Field №4
        value: (bit_field & 0b10000) != 0
