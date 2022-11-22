types:
  rand_task_drop_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
    instances:
      has_field_drop_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
