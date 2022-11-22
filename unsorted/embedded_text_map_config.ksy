types:
  embedded_text_map_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: text_map_id
        type: aux_types::string
        if: has_field_text_map_id
      - id: text_map_content
        type: aux_types::vlq_base128_le_u
        if: has_field_text_map_content
    instances:
      has_field_text_map_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_text_map_content: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
