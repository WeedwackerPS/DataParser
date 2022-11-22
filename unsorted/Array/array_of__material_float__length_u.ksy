types:
  array_of__material_float__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: material_float
        repeat: expr
        repeat-expr: length.value
