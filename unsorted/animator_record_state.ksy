types:
  animator_record_state:
    seq:
      - id: bit_field
        type: u1
      - id: short_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_short_name_hash
      - id: state_length
        type: f4
        if: has_field_state_length
      - id: normalized_time
        type: f4
        if: has_field_normalized_time
    instances:
      has_field_short_name_hash: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_state_length: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_normalized_time: # Field №2
        value: (bit_field & 0b100) != 0
