types:
  config_inter_grp_id:
    seq:
      - id: bit_field
        type: u1
      - id: index
        type: aux_types::vlq_base128_le_u
        if: has_field_index
      - id: grp_id
        type: aux_types::vlq_base128_le_u
        if: has_field_grp_id
      - id: next_grp_id
        type: aux_types::vlq_base128_le_u
        if: has_field_next_grp_id
    instances:
      has_field_index: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_grp_id: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_next_grp_id: # Field №2
        value: (bit_field & 0b100) != 0
