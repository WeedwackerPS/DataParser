types:
  config_homeworld_furniture_default_save:
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
      - id: parent_furniture_index
        type: aux_types::vlq_base128_le_s
        if: has_field_parent_furniture_index
    instances:
      has_field_furniture_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_spawn_pos: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_spawn_rot: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_parent_furniture_index: # Field №3
        value: (bit_field & 0b1000) != 0
