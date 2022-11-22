types:
  shopmall_recommend_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__shopmall_recommend_cond_type
        if: has_field_type
      - id: param1str
        type: aux_types::string
        if: has_field_param1str
      - id: param2str
        type: aux_types::string
        if: has_field_param2str
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1str: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2str: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_param1: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_param2: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
