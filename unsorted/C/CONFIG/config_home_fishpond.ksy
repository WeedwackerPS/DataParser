types:
  config_home_fishpond:
    seq:
      - id: bit_field
        type: u1
      - id: max_fish_count
        type: aux_types::vlq_base128_le_u
        if: has_field_max_fish_count
      - id: fish_born_pos_list
        type: array_of__config_home_common_pos__length_u
        if: has_field_fish_born_pos_list
    instances:
      has_field_max_fish_count: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_fish_born_pos_list: # Field №1
        value: (bit_field & 0b10) != 0
