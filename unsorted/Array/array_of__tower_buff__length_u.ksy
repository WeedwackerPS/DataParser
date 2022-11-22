types:
  array_of__tower_buff__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: tower_buff
        repeat: expr
        repeat-expr: length.value
