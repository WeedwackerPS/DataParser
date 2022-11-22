types:
  config_shape_sphere:
    seq:
      - id: base
        type: config_base_shape
      - id: bit_field
        type: u1
      - id: radius
        type: f4
        if: has_field_radius
    instances:
      has_field_radius: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      use_height:
        value: base.use_height
      height:
        value: base.height
      height_type:
        value: base.height_type
