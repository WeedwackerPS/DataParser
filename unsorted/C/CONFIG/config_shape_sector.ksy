types:
  config_shape_sector:
    seq:
      - id: base
        type: config_base_shape
      - id: bit_field
        type: u1
      - id: radius
        type: f4
        if: has_field_radius
      - id: full_degree
        type: f4
        if: has_field_full_degree
    instances:
      has_field_radius: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_full_degree: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      use_height:
        value: base.use_height
      height:
        value: base.height
      height_type:
        value: base.height_type
