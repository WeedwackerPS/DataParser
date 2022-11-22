types:
  config_level_area:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: level
        type: aux_types::vlq_base128_le_u
        if: has_field_level
      - id: priority
        type: aux_types::vlq_base128_le_u
        if: has_field_priority
      - id: polygon_data
        type: config_polygon_area
        if: has_field_polygon_data
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_level: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_priority: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_polygon_data: # Field №3
        value: (bit_field & 0b1000) != 0
