types:
  trans_point_update_material:
    seq:
      - id: bit_field
        type: u1
      - id: level
        type: aux_types::vlq_base128_le_u
        if: has_field_level
      - id: mat_path
        type: aux_types::string
        if: has_field_mat_path
      - id: transforms
        type: array_of__aux_types__string__length_u
        if: has_field_transforms
    instances:
      has_field_level: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_mat_path: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_transforms: # Field №2
        value: (bit_field & 0b100) != 0
