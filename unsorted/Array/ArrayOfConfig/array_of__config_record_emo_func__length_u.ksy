types:
  array_of__config_record_emo_func__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_record_emo_func
        repeat: expr
        repeat-expr: length.value
