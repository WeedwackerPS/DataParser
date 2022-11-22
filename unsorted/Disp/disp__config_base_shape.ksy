types:
  disp__config_base_shape:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_shape
            1: config_shape_circle
            2: config_shape_rect
            3: config_shape_sector
            4: config_shape_polygon
            5: config_shape_sphere
            _: aux_types::error
