types:
  lamp_progress_control_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: hour
        type: aux_types::vlq_base128_le_u
        if: has_field_hour
      - id: min_progress
        type: aux_types::vlq_base128_le_u
        if: has_field_min_progress
      - id: max_progress
        type: aux_types::vlq_base128_le_u
        if: has_field_max_progress
    instances:
      has_field_hour: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_min_progress: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_max_progress: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
