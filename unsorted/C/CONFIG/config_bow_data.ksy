types:
  config_bow_data:
    seq:
      - id: bit_field
        type: u1
      - id: bow_ratio_name
        type: aux_types::string
        if: has_field_bow_ratio_name
      - id: bow_string_loose_point
        type: vector
        if: has_field_bow_string_loose_point
      - id: bow_string_max_len
        type: f4
        if: has_field_bow_string_max_len
    instances:
      has_field_bow_ratio_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_bow_string_loose_point: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_bow_string_max_len: # Field №2
        value: (bit_field & 0b100) != 0
