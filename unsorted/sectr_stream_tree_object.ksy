types:
  sectr_stream_tree_object:
    seq:
      - id: bit_field
        type: u1
      - id: color_index
        type: aux_types::vlq_base128_le_u
        if: has_field_color_index
    instances:
      has_field_color_index: # Field №0
        value: (bit_field & 0b1) != 0
