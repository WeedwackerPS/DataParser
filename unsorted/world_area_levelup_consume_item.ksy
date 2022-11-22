types:
  world_area_levelup_consume_item:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
      - id: item_num
        type: aux_types::vlq_base128_le_u
        if: has_field_item_num
    instances:
      has_field_item_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_item_num: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
