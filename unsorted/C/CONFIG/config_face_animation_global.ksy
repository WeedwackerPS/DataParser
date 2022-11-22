types:
  config_face_animation_global:
    seq:
      - id: bit_field
        type: u1
      - id: type_defines
        type: dict_of__aux_types__string_face_animation_type_config
        if: has_field_type_defines
      - id: path_defines
        type: dict_of__aux_types__vlq_base128_le_u_face_animation_t_setting_path_config
        if: has_field_path_defines
    instances:
      has_field_type_defines: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_path_defines: # Field №1
        value: (bit_field & 0b10) != 0
