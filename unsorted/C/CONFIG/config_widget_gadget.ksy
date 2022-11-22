types:
  config_widget_gadget:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: max_count_in_scene
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_in_scene
      - id: max_count_by_player
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_by_player
      - id: is_combat_destroy
        type: u1
        if: has_field_is_combat_destroy
      - id: combat_destroy_distance
        type: f4
        if: has_field_combat_destroy_distance
      - id: is_distance_destroy
        type: u1
        if: has_field_is_distance_destroy
      - id: distance_destroy_distance
        type: f4
        if: has_field_distance_destroy_distance
      - id: is_has_collision
        type: u1
        if: has_field_is_has_collision
      - id: collision_include_npc
        type: u1
        if: has_field_collision_include_npc
      - id: collision_include_water
        type: u1
        if: has_field_collision_include_water
      - id: radius
        type: f4
        if: has_field_radius
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: create_height
        type: f4
        if: has_field_create_height
      - id: create_rot
        type: vector
        if: has_field_create_rot
      - id: is_leave_scene_destroy
        type: u1
        if: has_field_is_leave_scene_destroy
    instances:
      has_field_max_count_in_scene: # Field №0
        value: (bit_field.value & 0000001) != 0
      has_field_max_count_by_player: # Field №1
        value: (bit_field.value & 0000010) != 0
      has_field_is_combat_destroy: # Field №2
        value: (bit_field.value & 0000100) != 0
      has_field_combat_destroy_distance: # Field №3
        value: (bit_field.value & 0001000) != 0
      has_field_is_distance_destroy: # Field №4
        value: (bit_field.value & 0010000) != 0
      has_field_distance_destroy_distance: # Field №5
        value: (bit_field.value & 0100000) != 0
      has_field_is_has_collision: # Field №6
        value: (bit_field.value & 0b00000001000000) != 0
      has_field_collision_include_npc: # Field №7
        value: (bit_field.value & 0b00000010000000) != 0
      has_field_collision_include_water: # Field №8
        value: (bit_field.value & 0b00000100000000) != 0
      has_field_radius: # Field №9
        value: (bit_field.value & 0b00001000000000) != 0
      has_field_distance_to_avatar: # Field №10
        value: (bit_field.value & 0b00010000000000) != 0
      has_field_create_height: # Field №11
        value: (bit_field.value & 0b00100000000000) != 0
      has_field_create_rot: # Field №12
        value: (bit_field.value & 0b01000000000000) != 0
      has_field_is_leave_scene_destroy: # Field №13
        value: (bit_field.value & 0b10000000000000) != 0
