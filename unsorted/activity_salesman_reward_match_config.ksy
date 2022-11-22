types:
  activity_salesman_reward_match_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: reourece_type
        type: enum__reward_resource_type
        if: has_field_reourece_type
      - id: box_name
        type: aux_types::vlq_base128_le_u
        if: has_field_box_name
    instances:
      has_field_reward_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reourece_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_box_name: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
