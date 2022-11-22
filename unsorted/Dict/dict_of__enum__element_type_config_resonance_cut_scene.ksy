types:
  dict_of__enum__element_type_config_resonance_cut_scene:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__element_type_config_resonance_cut_scene
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__element_type_config_resonance_cut_scene:
    seq:
      - id: key
        type: enum__element_type
      - id: value
        type: config_resonance_cut_scene
