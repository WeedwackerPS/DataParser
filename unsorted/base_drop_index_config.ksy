types:
  base_drop_index_config:
    seq:
      - id: bit_field
        type: u1
      - id: min_level
        type: aux_types::vlq_base128_le_u
        if: has_field_min_level
      - id: drop_tag
        type: aux_types::string
        if: has_field_drop_tag
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: drop_count
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_count
    instances:
      has_field_min_level: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_drop_tag: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_drop_id: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_drop_count: # Field №3
        value: (bit_field & 0b1000) != 0
