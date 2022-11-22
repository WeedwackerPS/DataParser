types:
  config_record_emo_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: eye_info
        type: array_of__vector__length_u
        if: has_field_eye_info
      - id: emo_funcs
        type: array_of__config_record_emo_func__length_u
        if: has_field_emo_funcs
    instances:
      has_field_eye_info: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_emo_funcs: # Field №1
        value: (bit_field & 0b10) != 0
