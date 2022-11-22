types:
  array_of__trans_point_update_material__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: trans_point_update_material
        repeat: expr
        repeat-expr: length.value
