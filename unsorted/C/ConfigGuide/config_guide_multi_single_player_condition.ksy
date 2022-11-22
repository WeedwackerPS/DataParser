types:
  config_guide_multi_single_player_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: is_in
        type: u1
        if: has_field_is_in
    instances:
      has_field_is_in: # Field №0
        value: (bit_field & 0b1) != 0
