types:
  talk_role_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__talk_role_type
        if: has_field_type
      - id: id
        type: aux_types::string
        if: has_field_id
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_id: # Field №1
        value: (bit_field & 0b10) != 0
