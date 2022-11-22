types:
  config_world_area:
    seq:
      - id: bit_field
        type: u1
      - id: id1
        type: aux_types::vlq_base128_le_u
        if: has_field_id1
      - id: id2
        type: aux_types::vlq_base128_le_u
        if: has_field_id2
      - id: polygon_data
        type: config_polygon_area
        if: has_field_polygon_data
    instances:
      has_field_id1: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_id2: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_polygon_data: # Field №2
        value: (bit_field & 0b100) != 0
