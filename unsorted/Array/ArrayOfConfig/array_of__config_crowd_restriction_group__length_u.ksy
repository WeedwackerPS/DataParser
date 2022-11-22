types:
  array_of__config_crowd_restriction_group__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_crowd_restriction_group
        repeat: expr
        repeat-expr: length.value
