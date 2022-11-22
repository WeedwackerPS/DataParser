types:
  array_of__sectr_layer_group__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: sectr_layer_group
        repeat: expr
        repeat-expr: length.value
