types:
  drop_node:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: num_interval
        type: aux_types::string
        if: has_field_num_interval
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_num_interval: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_weight: # Field №2
        value: (bit_field & 0b100) != 0
