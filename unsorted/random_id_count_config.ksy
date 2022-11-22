types:
  random_id_count_config:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::string
        if: has_field_id
      - id: count
        type: aux_types::string
        if: has_field_count
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_count: # Field №1
        value: (bit_field & 0b10) != 0
