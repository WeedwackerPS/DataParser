types:
  custom_gadget_camera_settings:
    seq:
      - id: bit_field
        type: u1
      - id: gadget_height
        type: f4
        if: has_field_gadget_height
      - id: min_camera_radius
        type: f4
        if: has_field_min_camera_radius
      - id: min_elevation
        type: f4
        if: has_field_min_elevation
    instances:
      has_field_gadget_height: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_min_camera_radius: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_min_elevation: # Field №2
        value: (bit_field & 0b100) != 0
