types:
  config_guide_point:
    seq:
      - id: bit_field
        type: u1
      - id: managed_automatically
        type: u1
        if: has_field_managed_automatically
      - id: show_distance
        type: f4
        if: has_field_show_distance
      - id: hide_distance
        type: f4
        if: has_field_hide_distance
      - id: icon_name
        type: aux_types::string
        if: has_field_icon_name
    instances:
      has_field_managed_automatically: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_show_distance: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_hide_distance: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_icon_name: # Field №3
        value: (bit_field & 0b1000) != 0
