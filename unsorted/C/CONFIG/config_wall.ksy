types:
  config_wall:
    seq:
      - id: bit_field
        type: u1
      - id: collision_effect_pattern
        type: aux_types::string
        if: has_field_collision_effect_pattern
      - id: fade_duration
        type: f4
        if: has_field_fade_duration
    instances:
      has_field_collision_effect_pattern: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_fade_duration: # Field №1
        value: (bit_field & 0b10) != 0
