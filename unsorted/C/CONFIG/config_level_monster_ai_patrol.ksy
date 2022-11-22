types:
  config_level_monster_ai_patrol:
    seq:
      - id: bit_field
        type: u1
      - id: ai_patrol_group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_ai_patrol_group_id
      - id: ai_patrol_is_leader
        type: u1
        if: has_field_ai_patrol_is_leader
      - id: ai_patrol_offset
        type: point2d
        if: has_field_ai_patrol_offset
    instances:
      has_field_ai_patrol_group_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_ai_patrol_is_leader: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_ai_patrol_offset: # Field №2
        value: (bit_field & 0b100) != 0
