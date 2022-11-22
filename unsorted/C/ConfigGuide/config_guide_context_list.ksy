types:
  config_guide_context_list:
    seq:
      - id: bit_field
        type: u1
      - id: main_page_black
        type: array_of__aux_types__string__length_u
        if: has_field_main_page_black
      - id: dialog_black
        type: array_of__aux_types__string__length_u
        if: has_field_dialog_black
      - id: global_white
        type: array_of__aux_types__string__length_u
        if: has_field_global_white
      - id: interval_black
        type: array_of__aux_types__string__length_u
        if: has_field_interval_black
    instances:
      has_field_main_page_black: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_dialog_black: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_global_white: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_interval_black: # Field №3
        value: (bit_field & 0b1000) != 0
