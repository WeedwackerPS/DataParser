types:
  animator_record_transition_info:
    seq:
      - id: bit_field
        type: u1
      - id: transition_duration
        type: f4
        if: has_field_transition_duration
      - id: normalized_transition_time
        type: f4
        if: has_field_normalized_transition_time
      - id: duration_unit
        type: aux_types::vlq_base128_le_u
        if: has_field_duration_unit
    instances:
      has_field_transition_duration: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_normalized_transition_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_duration_unit: # Field №2
        value: (bit_field & 0b100) != 0
