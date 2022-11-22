types:
  quest_global_var_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: default_value
        type: aux_types::vlq_base128_le_s
        if: has_field_default_value
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_default_value: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
