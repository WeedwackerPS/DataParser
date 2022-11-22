types:
  config_level_polygons:
    seq:
      - id: bit_field
        type: u1
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: polygons
        type: array_of__config_level_polygon__length_u
        if: has_field_polygons
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_polygons: # Field №1
        value: (bit_field & 0b10) != 0
