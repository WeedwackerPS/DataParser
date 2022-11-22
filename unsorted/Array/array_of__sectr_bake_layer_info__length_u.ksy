types:
  array_of__sectr_bake_layer_info__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: sectr_bake_layer_info
        repeat: expr
        repeat-expr: length.value
