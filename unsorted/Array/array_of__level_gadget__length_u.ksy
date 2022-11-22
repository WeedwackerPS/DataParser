types:
  array_of__level_gadget__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: level_gadget
        repeat: expr
        repeat-expr: length.value
