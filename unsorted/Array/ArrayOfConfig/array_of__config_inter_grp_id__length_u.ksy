types:
  array_of__config_inter_grp_id__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_inter_grp_id
        repeat: expr
        repeat-expr: length.value
