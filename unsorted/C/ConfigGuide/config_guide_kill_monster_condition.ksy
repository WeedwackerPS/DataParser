types:
  config_guide_kill_monster_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: spawn_new
        type: u1
        if: has_field_spawn_new
      - id: monster_id
        type: aux_types::vlq_base128_le_u
        if: has_field_monster_id
      - id: monster_level
        type: aux_types::vlq_base128_le_u
        if: has_field_monster_level
      - id: monster_pos
        type: vector
        if: has_field_monster_pos
      - id: monster_yaw
        type: f4
        if: has_field_monster_yaw
    instances:
      has_field_spawn_new: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_monster_id: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_monster_level: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_monster_pos: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_monster_yaw: # Field №4
        value: (bit_field & 0b10000) != 0
