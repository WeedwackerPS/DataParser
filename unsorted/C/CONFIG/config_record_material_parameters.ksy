types:
  config_record_material_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: material_type
        type: aux_types::vlq_base128_le_u
        if: has_field_material_type
      - id: texture_names
        type: array_of__aux_types__string__length_u
        if: has_field_texture_names
      - id: floats
        type: array_of__material_float__length_u
        if: has_field_floats
    instances:
      has_field_material_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_texture_names: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_floats: # Field №2
        value: (bit_field & 0b100) != 0
