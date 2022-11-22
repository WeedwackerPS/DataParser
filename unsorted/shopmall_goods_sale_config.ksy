types:
  shopmall_goods_sale_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: goods_id
        type: aux_types::vlq_base128_le_u
        if: has_field_goods_id
      - id: discount_scoin
        type: aux_types::vlq_base128_le_u
        if: has_field_discount_scoin
      - id: discount_hcoin
        type: aux_types::vlq_base128_le_u
        if: has_field_discount_hcoin
      - id: discount_mcoin
        type: aux_types::vlq_base128_le_u
        if: has_field_discount_mcoin
      - id: discount_rate
        type: f4
        if: has_field_discount_rate
      - id: discount_begin_time
        type: aux_types::string
        if: has_field_discount_begin_time
      - id: discount_end_time
        type: aux_types::string
        if: has_field_discount_end_time
      - id: discount_begin_timestamp
        type: aux_types::vlq_base128_le_u
        if: has_field_discount_begin_timestamp
      - id: discount_end_timestamp
        type: aux_types::vlq_base128_le_u
        if: has_field_discount_end_timestamp
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_goods_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_discount_scoin: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_discount_hcoin: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_discount_mcoin: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_discount_rate: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_discount_begin_time: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_discount_end_time: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_discount_begin_timestamp: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_discount_end_timestamp: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
