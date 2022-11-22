types:
  config_ai_scripted_move_to_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: is3d
        type: u1
        if: has_field_is3d
      - id: stop_by_obstacle
        type: u1
        if: has_field_stop_by_obstacle
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_is3d: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_stop_by_obstacle: # Field №2
        value: (bit_field & 0b100) != 0
