types:
  config_shape_rect:
    seq:
      - id: base
        type: config_base_shape
      - id: bit_field
        type: u1
      - id: center_type
        type: enum__center_pos_type
        if: has_field_center_type
      - id: width
        type: f4
        if: has_field_width
      - id: length
        type: f4
        if: has_field_length
    instances:
      has_field_center_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_width: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_length: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      use_height:
        value: base.use_height
      height:
        value: base.height
      height_type:
        value: base.height_type
