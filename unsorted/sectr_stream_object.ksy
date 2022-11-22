types:
  sectr_stream_object:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__sectr_stream_object_type
        if: has_field_type
      - id: game_object_path_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_game_object_path_hash
      - id: obj_pattern_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_obj_pattern_name_hash
      - id: magitude
        type: f4
        if: has_field_magitude
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: scale
        type: vector
        if: has_field_scale
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_game_object_path_hash: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_obj_pattern_name_hash: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_magitude: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_position: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_rotation: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_scale: # Field №6
        value: (bit_field & 0b1000000) != 0
