types:
  base_action_container:
    seq:
      - id: bit_field
        type: u1
      - id: local_id
        type: aux_types::vlq_base128_le_s
        if: has_field_local_id
    instances:
      has_field_local_id: # Field №0
        value: (bit_field & 0b1) != 0
