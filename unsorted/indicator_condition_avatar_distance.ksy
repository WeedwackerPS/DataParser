types:
  indicator_condition_avatar_distance:
    seq:
      - id: base
        type: indicator_condition
      - id: bit_field
        type: u1
      - id: distance
        type: template_param_float
        if: has_field_distance
    instances:
      has_field_distance: # Field №0
        value: (bit_field & 0b1) != 0
