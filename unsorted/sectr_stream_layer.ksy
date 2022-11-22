types:
  sectr_stream_layer:
    seq:
      - id: bit_field
        type: u1
      - id: sector_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_sector_name_hash
      - id: layer_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_layer_name_hash
      - id: type
        type: enum__sectr_layer_type
        if: has_field_type
      - id: layer_full_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_layer_full_name_hash
      - id: position
        type: vector
        if: has_field_position
      - id: sector_size
        type: vector
        if: has_field_sector_size
      - id: layer_path_info
        type: sectr_combine_stream_path_info
        if: has_field_layer_path_info
      - id: attach_layers
        type: array_of__sectr_attach_stream_layer__length_u
        if: has_field_attach_layers
    instances:
      has_field_sector_name_hash: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_layer_name_hash: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_type: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_layer_full_name_hash: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_position: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_sector_size: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_layer_path_info: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_attach_layers: # Field №7
        value: (bit_field & 0b10000000) != 0
