types:
  config_shape_polygon:
    seq:
      - id: base
        type: config_base_shape
      - id: bit_field
        type: u1
      - id: polygon_config_path
        type: aux_types::string
        if: has_field_polygon_config_path
    instances:
      has_field_polygon_config_path: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      use_height:
        value: base.use_height
      height:
        value: base.height
      height_type:
        value: base.height_type
