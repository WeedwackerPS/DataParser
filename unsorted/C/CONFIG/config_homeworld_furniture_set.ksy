types:
  config_homeworld_furniture_set:
    seq:
      - id: bit_field
        type: u1
      - id: radius
        type: f4
        if: has_field_radius
      - id: height
        type: f4
        if: has_field_height
      - id: furniture_units
        type: array_of__config_homeworld_furniture_unit__length_u
        if: has_field_furniture_units
      - id: npc_spawn_points
        type: array_of__config_homeworld_suite_npc_spawn_point__length_u
        if: has_field_npc_spawn_points
    instances:
      has_field_radius: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_height: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_furniture_units: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_npc_spawn_points: # Field №3
        value: (bit_field & 0b1000) != 0
