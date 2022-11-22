types:
  array_of__config_v_custom_map_mark__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_v_custom_map_mark
        repeat: expr
        repeat-expr: length.value
