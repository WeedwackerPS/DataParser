types:
  array_of__sectr_stream_object__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: sectr_stream_object
        repeat: expr
        repeat-expr: length.value
