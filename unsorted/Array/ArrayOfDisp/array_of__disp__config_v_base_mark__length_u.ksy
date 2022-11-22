types:
  array_of__disp__config_v_base_mark__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_v_base_mark
        repeat: expr
        repeat-expr: length.value
