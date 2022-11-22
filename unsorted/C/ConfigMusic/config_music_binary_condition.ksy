types:
  config_music_binary_condition:
    seq:
      - id: base
        type: config_music_condition
      - id: bit_field
        type: u1
      - id: lhs_id
        type: aux_types::vlq_base128_le_s
        if: has_field_lhs_id
      - id: rhs_id
        type: aux_types::vlq_base128_le_s
        if: has_field_rhs_id
    instances:
      has_field_lhs_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_rhs_id: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      id:
        value: base.id
