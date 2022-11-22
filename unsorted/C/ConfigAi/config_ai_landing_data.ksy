types:
  config_ai_landing_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: landing_angle_max
        type: f4
        if: has_field_landing_angle_max
      - id: landing_angle_min
        type: f4
        if: has_field_landing_angle_min
      - id: landing_terrain_altitude
        type: f4
        if: has_field_landing_terrain_altitude
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_landing_angle_max: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_landing_angle_min: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_landing_terrain_altitude: # Field №3
        value: (bit_field & 0b1000) != 0
