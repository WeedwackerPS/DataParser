types:
  music_instrument_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: instrument_id
        type: aux_types::vlq_base128_le_u
        if: has_field_instrument_id
      - id: widget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_widget_id
      - id: perform_id
        type: aux_types::vlq_base128_le_s
        if: has_field_perform_id
      - id: free_mode_perfab_path
        type: aux_types::string
        if: has_field_free_mode_perfab_path
    instances:
      has_field_instrument_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_widget_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_perform_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_free_mode_perfab_path: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
