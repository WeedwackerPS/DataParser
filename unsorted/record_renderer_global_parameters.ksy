types:
  record_renderer_global_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: floats
        type: array_of__renderer_float__length_u
        if: has_field_floats
    instances:
      has_field_floats: # Field №0
        value: (bit_field & 0b1) != 0
