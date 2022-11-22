types:
  config_level_route:
    seq:
      - id: bit_field
        type: u1
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: routes
        type: array_of__config_route__length_u
        if: has_field_routes
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_routes: # Field №1
        value: (bit_field & 0b10) != 0
