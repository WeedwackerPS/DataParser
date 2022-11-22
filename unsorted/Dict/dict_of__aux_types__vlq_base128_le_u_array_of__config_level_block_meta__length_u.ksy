types:
  dict_of__aux_types__vlq_base128_le_u_array_of__config_level_block_meta__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_array_of__config_level_block_meta__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_array_of__config_level_block_meta__length_u:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: array_of__config_level_block_meta__length_u
