types:
  config_ai_move:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: move_category
        type: enum__move_category_ai
        if: has_field_move_category
      - id: use_nav_mesh
        type: u1
        if: has_field_use_nav_mesh
      - id: nav_mesh_agent_name
        type: aux_types::string
        if: has_field_nav_mesh_agent_name
      - id: almost_reached_distance_walk
        type: f4
        if: has_field_almost_reached_distance_walk
      - id: almost_reached_distance_run
        type: f4
        if: has_field_almost_reached_distance_run
      - id: snakelike_move_setting
        type: config_ai_snakelike_move
        if: has_field_snakelike_move_setting
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_move_category: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_use_nav_mesh: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_nav_mesh_agent_name: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_almost_reached_distance_walk: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_almost_reached_distance_run: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_snakelike_move_setting: # Field №6
        value: (bit_field & 0b1000000) != 0
