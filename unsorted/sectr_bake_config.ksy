types:
  sectr_bake_config:
    seq:
      - id: bit_field
        type: u1
      - id: obj_type
        type: enum__sectr_object_type
        if: has_field_obj_type
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
    instances:
      has_field_obj_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_id: # Field №2
        value: (bit_field & 0b100) != 0
