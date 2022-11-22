types:
  disp__config_polygon_zone:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_polygon_zone
            1: config_danger_zone
            2: config_fishing_zone
            _: aux_types::error
