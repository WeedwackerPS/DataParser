types:
  config_pose_initial_param:
    seq:
      - id: bit_field
        type: u1
      - id: int_params
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_int_params
      - id: float_params
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_float_params
      - id: bool_params
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_bool_params
    instances:
      has_field_int_params: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_float_params: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_bool_params: # Field №2
        value: (bit_field & 0b100) != 0
