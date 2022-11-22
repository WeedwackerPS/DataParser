types:
  solo_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: solo_start
        type: aux_types::vlq_base128_le_u
        if: has_field_solo_start
      - id: solo_end
        type: aux_types::vlq_base128_le_u
        if: has_field_solo_end
      - id: is_self
        type: u1
        if: has_field_is_self
    instances:
      has_field_solo_start: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_solo_end: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_is_self: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
