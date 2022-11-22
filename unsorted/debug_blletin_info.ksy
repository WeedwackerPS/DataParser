types:
  debug_blletin_info:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: board_id
        type: aux_types::vlq_base128_le_u
        if: has_field_board_id
      - id: content
        type: aux_types::string
        if: has_field_content
      - id: author
        type: aux_types::string
        if: has_field_author
      - id: create_time
        type: aux_types::string
        if: has_field_create_time
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_board_id: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_content: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_author: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_create_time: # Field №4
        value: (bit_field & 0b10000) != 0
