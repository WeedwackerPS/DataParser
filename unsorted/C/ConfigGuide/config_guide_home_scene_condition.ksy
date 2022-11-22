types:
  config_guide_home_scene_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: is_in_home_big_world
        type: u1
        if: has_field_is_in_home_big_world
      - id: is_in_home_room
        type: u1
        if: has_field_is_in_home_room
    instances:
      has_field_is_in_home_big_world: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_in_home_room: # Field №1
        value: (bit_field & 0b10) != 0
