types:
  indicator_condition_dummy_point_distance:
    seq:
      - id: base
        type: indicator_condition
      - id: bit_field
        type: u1
      - id: key
        type: template_param_string
        if: has_field_key
      - id: distance
        type: template_param_float
        if: has_field_distance
    instances:
      has_field_key: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_distance: # Field №1
        value: (bit_field & 0b10) != 0
