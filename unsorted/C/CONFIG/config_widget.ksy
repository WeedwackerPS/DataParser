types:
  config_widget:
    seq:
      - id: bit_field
        type: u1
      - id: widgets
        type: dict_of__aux_types__string_disp__config_base_widget
        if: has_field_widgets
    instances:
      has_field_widgets: # Field №0
        value: (bit_field & 0b1) != 0
