types:
  skin_color:
    seq:
      - id: bit_field
        type: u1
      - id: renderer
        type: aux_types::string
        if: has_field_renderer
      - id: index
        type: aux_types::vlq_base128_le_s
        if: has_field_index
      - id: channel
        type: aux_types::vlq_base128_le_s
        if: has_field_channel
      - id: color
        type: aux_types::string
        if: has_field_color
    instances:
      has_field_renderer: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_index: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_channel: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_color: # Field №3
        value: (bit_field & 0b1000) != 0
