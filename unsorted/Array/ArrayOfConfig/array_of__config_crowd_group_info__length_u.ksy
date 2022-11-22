types:
  array_of__config_crowd_group_info__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_crowd_group_info
        repeat: expr
        repeat-expr: length.value
