types:
  investigation_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: next_investigation_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_next_investigation_id_list
      - id: unlock_open_state_type
        type: enum__open_state_type
        if: has_field_unlock_open_state_type
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: title
        type: aux_types::vlq_base128_le_u
        if: has_field_title
      - id: investigation_type
        type: enum__investigation_type
        if: has_field_investigation_type
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_city_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_next_investigation_id_list: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_unlock_open_state_type: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_reward_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_title: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_investigation_type: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
