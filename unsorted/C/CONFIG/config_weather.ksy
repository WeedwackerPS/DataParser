types:
  config_weather:
    seq:
      - id: bit_field
        type: u1
      - id: drop_elem_balls
        type: array_of__config_elem_ball__length_u
        if: has_field_drop_elem_balls
      - id: shape_name
        type: aux_types::string
        if: has_field_shape_name
      - id: position
        type: array_of__f4__length_u
        if: has_field_position
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
      - id: default_enviro
        type: aux_types::string
        if: has_field_default_enviro
      - id: weather_list
        type: array_of__aux_types__string__length_u
        if: has_field_weather_list
      - id: weather_weight_list
        type: array_of__f4__length_u
        if: has_field_weather_weight_list
      - id: refresh_time
        type: f4
        if: has_field_refresh_time
    instances:
      has_field_drop_elem_balls: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_shape_name: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_position: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_priority: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_default_enviro: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_weather_list: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_weather_weight_list: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_refresh_time: # Field №7
        value: (bit_field & 0b10000000) != 0
