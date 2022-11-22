types:
  config_weekend_djinn:
    seq:
      - id: bit_field
        type: u1
      - id: spawn_pos
        type: vector
        if: has_field_spawn_pos
      - id: spawn_rot
        type: vector
        if: has_field_spawn_rot
      - id: pos
        type: vector
        if: has_field_pos
      - id: rot
        type: vector
        if: has_field_rot
    instances:
      has_field_spawn_pos: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_spawn_rot: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_pos: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_rot: # Field №3
        value: (bit_field & 0b1000) != 0
