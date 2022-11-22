types:
  animator_trigger:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: is_set
        type: u1
        if: has_field_is_set
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_set: # Field №1
        value: (bit_field & 0b10) != 0
