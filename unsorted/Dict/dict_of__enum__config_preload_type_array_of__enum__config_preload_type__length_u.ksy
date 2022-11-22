types:
  dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__config_preload_type_array_of__enum__config_preload_type__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__config_preload_type_array_of__enum__config_preload_type__length_u:
    seq:
      - id: key
        type: enum__config_preload_type
      - id: value
        type: array_of__enum__config_preload_type__length_u
