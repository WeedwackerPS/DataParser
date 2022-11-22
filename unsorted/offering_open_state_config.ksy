types:
  offering_open_state_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: offering_id
        type: aux_types::vlq_base128_le_u
        if: has_field_offering_id
      - id: open_state
        type: enum__open_state_type
        if: has_field_open_state
      - id: item_limit
        type: enum__item_limit_type
        if: has_field_item_limit
      - id: is_continuous_level_up
        type: u1
        if: has_field_is_continuous_level_up
    instances:
      has_field_offering_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_open_state: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_item_limit: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_is_continuous_level_up: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
