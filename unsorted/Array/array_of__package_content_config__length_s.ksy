types:
  array_of__package_content_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: package_content_config
        repeat: expr
        repeat-expr: length.value
