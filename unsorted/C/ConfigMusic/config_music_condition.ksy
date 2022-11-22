types:
  config_music_condition:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_s
        if: has_field_id
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b1) != 0
