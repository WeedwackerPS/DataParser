types:
  config_home_fishpond_set:
    seq:
      - id: bit_field
        type: u1
      - id: fishpond_map
        type: dict_of__aux_types__vlq_base128_le_u_config_home_fishpond
        if: has_field_fishpond_map
    instances:
      has_field_fishpond_map: # Field №0
        value: (bit_field & 0b1) != 0
