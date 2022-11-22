types:
  config_home_place_col_path:
    seq:
      - id: bit_field
        type: u1
      - id: place_col_path
        type: dict_of__aux_types__string_array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_place_col_path
    instances:
      has_field_place_col_path: # Field №0
        value: (bit_field & 0b1) != 0
