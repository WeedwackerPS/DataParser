types:
  sectr_combine_stream_path_info:
    seq:
      - id: bit_field
        type: u1
      - id: layer_loader_path_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_layer_loader_path_hash
      - id: platform_layers
        type: array_of__sectr_platform_stream_layer__length_u
        if: has_field_platform_layers
    instances:
      has_field_layer_loader_path_hash: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_platform_layers: # Field №1
        value: (bit_field & 0b10) != 0
