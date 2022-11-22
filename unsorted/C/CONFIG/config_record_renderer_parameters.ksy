types:
  config_record_renderer_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: global_parameter
        type: record_renderer_global_parameters
        if: has_field_global_parameter
      - id: textures
        type: array_of__record_override_texture__length_u
        if: has_field_textures
    instances:
      has_field_global_parameter: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_textures: # Field №1
        value: (bit_field & 0b10) != 0
