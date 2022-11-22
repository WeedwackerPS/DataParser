types:
  ps_activities_base_config:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: object_id
        type: aux_types::string
        if: has_field_object_id
      - id: export_version
        type: aux_types::string
        if: has_field_export_version
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_object_id: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_export_version: # Field №2
        value: (bit_field & 0b100) != 0
