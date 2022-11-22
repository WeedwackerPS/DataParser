types:
  array_of__config_record_frame__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_record_frame
        repeat: expr
        repeat-expr: length.value
