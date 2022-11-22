types:
  config_character_rendering:
    seq:
      - id: bit_field
        type: u1
      - id: override_light_dir
        type: u1
        if: has_field_override_light_dir
      - id: override_light_euler_angle
        type: vector
        if: has_field_override_light_euler_angle
    instances:
      has_field_override_light_dir: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_override_light_euler_angle: # Field №1
        value: (bit_field & 0b10) != 0
