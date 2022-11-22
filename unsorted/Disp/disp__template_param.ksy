types:
  disp__template_param:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: template_param
            1: template_param_float
            2: template_param_int32
            3: template_param_string
            _: aux_types::error
