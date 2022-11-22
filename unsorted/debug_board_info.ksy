types:
  debug_board_info:
    seq:
      - id: base
        type: debug_blletin_info
      - id: bit_field
        type: u1
      - id: type
        type: aux_types::vlq_base128_le_u
        if: has_field_type
      - id: title
        type: aux_types::string
        if: has_field_title
      - id: location
        type: aux_types::string
        if: has_field_location
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_title: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_location: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_scene_id: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      id:
        value: base.id
      board_id:
        value: base.board_id
      content:
        value: base.content
      author:
        value: base.author
      create_time:
        value: base.create_time
