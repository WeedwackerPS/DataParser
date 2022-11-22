types:
  dict_of__aux_types__vlq_base128_le_u_face_animation_t_setting_path_config:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_face_animation_t_setting_path_config
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_face_animation_t_setting_path_config:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: face_animation_t_setting_path_config
