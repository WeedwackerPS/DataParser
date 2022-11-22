types:
  daily_task_tag_type:
    seq:
      - id: bit_field
        type: u1
      - id: value
        type: aux_types::vlq_base128_le_u
        if: has_field_value
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b1) != 0
