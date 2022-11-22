types:
  drop_subfield_entry:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: drop_subfield_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_subfield_id
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_drop_subfield_id: # Field №1
        value: (bit_field & 0b10) != 0
