types:
  config_paimon:
    seq:
      - id: bit_field
        type: u1
      - id: follow_off_set
        type: vector
        if: has_field_follow_off_set
      - id: slow_down_range_xz
        type: f4
        if: has_field_slow_down_range_xz
      - id: slow_down_range_y
        type: f4
        if: has_field_slow_down_range_y
      - id: show_random_cd_min
        type: f4
        if: has_field_show_random_cd_min
      - id: show_random_cd_max
        type: f4
        if: has_field_show_random_cd_max
    instances:
      has_field_follow_off_set: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_slow_down_range_xz: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_slow_down_range_y: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_show_random_cd_min: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_show_random_cd_max: # Field №4
        value: (bit_field & 0b10000) != 0
