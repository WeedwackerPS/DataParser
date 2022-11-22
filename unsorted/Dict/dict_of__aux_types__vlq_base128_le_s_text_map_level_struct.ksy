types:
  dict_of__aux_types__vlq_base128_le_s_text_map_level_struct:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_text_map_level_struct
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_text_map_level_struct:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: text_map_level_struct
