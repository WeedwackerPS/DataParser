types:
  sectr_attach_stream_layer:
    seq:
      - id: bit_field
        type: u1
      - id: attach_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_attach_name_hash
      - id: festival_layer_path_info
        type: sectr_combine_stream_path_info
        if: has_field_festival_layer_path_info
      - id: routine_layer_path_info
        type: sectr_combine_stream_path_info
        if: has_field_routine_layer_path_info
    instances:
      has_field_attach_name_hash: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_festival_layer_path_info: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_routine_layer_path_info: # Field №2
        value: (bit_field & 0b100) != 0
