types:
  disp__config_special_camera:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_special_camera
            1: config_gadget_special_camera
            _: aux_types::error
