types:
  config_homeworld_furniture_light_component:
    seq:
      - id: bit_field
        type: u1
      - id: light_range
        type: f4
        if: has_field_light_range
      - id: light_intensity
        type: f4
        if: has_field_light_intensity
      - id: min_view_dist_ratio
        type: f4
        if: has_field_min_view_dist_ratio
      - id: max_view_dist_ratio
        type: f4
        if: has_field_max_view_dist_ratio
      - id: light_type
        type: aux_types::vlq_base128_le_u
        if: has_field_light_type
      - id: lightmap_bake_type
        type: aux_types::vlq_base128_le_u
        if: has_field_lightmap_bake_type
      - id: light_shading_mode
        type: aux_types::vlq_base128_le_u
        if: has_field_light_shading_mode
      - id: light_color
        type: color_vector
        if: has_field_light_color
    instances:
      has_field_light_range: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_light_intensity: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_min_view_dist_ratio: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_max_view_dist_ratio: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_light_type: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_lightmap_bake_type: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_light_shading_mode: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_light_color: # Field №7
        value: (bit_field & 0b10000000) != 0
