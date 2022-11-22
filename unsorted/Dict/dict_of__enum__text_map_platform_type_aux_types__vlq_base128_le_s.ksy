types:
  dict_of__enum__text_map_platform_type_aux_types__vlq_base128_le_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__text_map_platform_type_aux_types__vlq_base128_le_s
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__text_map_platform_type_aux_types__vlq_base128_le_s:
    seq:
      - id: key
        type: enum__text_map_platform_type
      - id: value
        type: aux_types::vlq_base128_le_s
