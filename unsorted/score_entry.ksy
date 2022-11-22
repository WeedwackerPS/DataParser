types:
  score_entry:
    seq:
      - id: bit_field
        type: u1
      - id: json_path
        type: token_json_path
        if: has_field_json_path
      - id: prefix_root_name
        type: aux_types::string
        if: has_field_prefix_root_name
      - id: root_name_key
        type: aux_types::string
        if: has_field_root_name_key
    instances:
      has_field_json_path: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_prefix_root_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_root_name_key: # Field №2
        value: (bit_field & 0b100) != 0
