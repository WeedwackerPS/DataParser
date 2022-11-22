types:
  config_guide_multi_player_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: is_in
        type: u1
        if: has_field_is_in
      - id: player_num
        type: aux_types::vlq_base128_le_s
        if: has_field_player_num
      - id: opt
        type: enum__guide_operator
        if: has_field_opt
      - id: mode
        type: enum__guide_multi_player_mode
        if: has_field_mode
    instances:
      has_field_is_in: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_player_num: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_opt: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_mode: # Field №3
        value: (bit_field & 0b1000) != 0
