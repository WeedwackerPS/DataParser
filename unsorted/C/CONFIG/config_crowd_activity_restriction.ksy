types:
  config_crowd_activity_restriction:
    seq:
      - id: bit_field
        type: u1
      - id: activity_type
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_type
      - id: is_active
        type: u1
        if: has_field_is_active
      - id: activity_phase
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_activity_phase
      - id: cond_id
        type: aux_types::vlq_base128_le_u
        if: has_field_cond_id
    instances:
      has_field_activity_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_active: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_activity_phase: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_cond_id: # Field №3
        value: (bit_field & 0b1000) != 0
