types:
  config_graphics_requirement:
    seq:
      - id: bit_field
        type: u1
      - id: info
        type: aux_types::string
        if: has_field_info
      - id: values
        type: array_of__aux_types__string__length_u
        if: has_field_values
    instances:
      has_field_info: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_values: # Field №1
        value: (bit_field & 0b10) != 0
