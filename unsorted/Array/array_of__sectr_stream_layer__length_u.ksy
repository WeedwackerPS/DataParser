types:
  array_of__sectr_stream_layer__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: sectr_stream_layer
        repeat: expr
        repeat-expr: length.value
