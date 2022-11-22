types:
  array_of__world_area_levelup_action__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: world_area_levelup_action
        repeat: expr
        repeat-expr: length.value
