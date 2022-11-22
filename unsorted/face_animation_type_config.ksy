types:
  face_animation_type_config:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: aux_types::vlq_base128_le_u
        if: has_field_type
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b1) != 0
