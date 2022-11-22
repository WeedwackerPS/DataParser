types:
  config_homeworld_furniture_light_detail:
    seq:
      - id: bit_field
        type: u1
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: light_path
        type: aux_types::string
        if: has_field_light_path
      - id: light_component
        type: config_homeworld_furniture_light_component
        if: has_field_light_component
      - id: enviro_component
        type: config_homeworld_furniture_enviro_component
        if: has_field_enviro_component
    instances:
      has_field_position: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_rotation: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_light_path: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_light_component: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_enviro_component: # Field №4
        value: (bit_field & 0b10000) != 0
