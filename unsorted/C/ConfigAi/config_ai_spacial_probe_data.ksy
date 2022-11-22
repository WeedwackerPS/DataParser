types:
  config_ai_spacial_probe_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: cd_max
        type: f4
        if: has_field_cd_max
      - id: cd_min
        type: f4
        if: has_field_cd_min
      - id: terrain_offset_min
        type: f4
        if: has_field_terrain_offset_min
      - id: terrain_offset_max
        type: f4
        if: has_field_terrain_offset_max
      - id: distance_from_born
        type: f4
        if: has_field_distance_from_born
      - id: distance_from_current_min
        type: f4
        if: has_field_distance_from_current_min
      - id: distance_from_current_max
        type: f4
        if: has_field_distance_from_current_max
      - id: probe_number_min
        type: aux_types::vlq_base128_le_s
        if: has_field_probe_number_min
      - id: probe_number_max
        type: aux_types::vlq_base128_le_s
        if: has_field_probe_number_max
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_cd_max: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_cd_min: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_terrain_offset_min: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_terrain_offset_max: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_distance_from_born: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_distance_from_current_min: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_distance_from_current_max: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_probe_number_min: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_probe_number_max: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
