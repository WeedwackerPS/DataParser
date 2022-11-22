types:
  sectr_platform_stream_layer:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__sectr_platform_type
        if: has_field_type
      - id: layer_loader_path_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_layer_loader_path_hash
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_layer_loader_path_hash: # Field №1
        value: (bit_field & 0b10) != 0
