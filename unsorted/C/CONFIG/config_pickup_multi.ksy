types:
  config_pickup_multi:
    seq:
      - id: bit_field
        type: u1
      - id: dir_min_vec
        type: vector
        if: has_field_dir_min_vec
      - id: dir_max_vec
        type: vector
        if: has_field_dir_max_vec
      - id: max_num
        type: aux_types::vlq_base128_le_u
        if: has_field_max_num
      - id: min_num
        type: aux_types::vlq_base128_le_u
        if: has_field_min_num
      - id: attract_speed
        type: f4
        if: has_field_attract_speed
      - id: use_world_trans
        type: u1
        if: has_field_use_world_trans
      - id: is_auto_attract
        type: u1
        if: has_field_is_auto_attract
    instances:
      has_field_dir_min_vec: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_dir_max_vec: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_max_num: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_min_num: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_attract_speed: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_use_world_trans: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_is_auto_attract: # Field №6
        value: (bit_field & 0b1000000) != 0
