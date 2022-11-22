types:
  config_guide_climate_type_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: climate_type
        type: enum__json_climate_type
        if: has_field_climate_type
      - id: is_equal
        type: u1
        if: has_field_is_equal
    instances:
      has_field_climate_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_equal: # Field №1
        value: (bit_field & 0b10) != 0
