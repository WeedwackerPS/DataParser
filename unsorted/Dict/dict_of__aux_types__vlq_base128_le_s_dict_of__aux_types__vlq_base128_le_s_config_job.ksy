types:
  dict_of__aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_job:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_job
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_job:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: dict_of__aux_types__vlq_base128_le_s_config_job
