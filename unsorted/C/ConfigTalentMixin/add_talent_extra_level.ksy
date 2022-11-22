types:
  add_talent_extra_level:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: talent_type
        type: enum__talent_type
        if: has_field_talent_type
      - id: talent_index
        type: aux_types::vlq_base128_le_u
        if: has_field_talent_index
      - id: extra_level
        type: aux_types::vlq_base128_le_u
        if: has_field_extra_level
    instances:
      has_field_talent_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_talent_index: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_extra_level: # Field №2
        value: (bit_field & 0b100) != 0
