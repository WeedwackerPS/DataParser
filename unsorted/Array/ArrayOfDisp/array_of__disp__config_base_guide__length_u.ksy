types:
  array_of__disp__config_base_guide__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_base_guide
        repeat: expr
        repeat-expr: length.value
