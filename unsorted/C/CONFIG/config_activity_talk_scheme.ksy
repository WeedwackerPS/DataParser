types:
  config_activity_talk_scheme:
    seq:
      - id: bit_field
        type: u1
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: talks
        type: array_of__config_talk_scheme__length_u
        if: has_field_talks
    instances:
      has_field_activity_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_talks: # Field №1
        value: (bit_field & 0b10) != 0
