types:
  sectr_layer_group:
    seq:
      - id: bit_field
        type: u1
      - id: group_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_group_name_hash
      - id: layer_infos
        type: array_of__sectr_stream_layer__length_u
        if: has_field_layer_infos
    instances:
      has_field_group_name_hash: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_layer_infos: # Field №1
        value: (bit_field & 0b10) != 0
