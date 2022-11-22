types:
  config_home_animal:
    seq:
      - id: bit_field
        type: u1
      - id: furniture_id
        type: aux_types::vlq_base128_le_u
        if: has_field_furniture_id
      - id: spawn_pos
        type: vector
        if: has_field_spawn_pos
      - id: spawn_rot
        type: vector
        if: has_field_spawn_rot
    instances:
      has_field_furniture_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_spawn_pos: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_spawn_rot: # Field №2
        value: (bit_field & 0b100) != 0
