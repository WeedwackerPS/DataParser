types:
  array_of__dungeon_list__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: dungeon_list
        repeat: expr
        repeat-expr: length.value
