types:
  world_area_explore_event_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: event_id
        type: aux_types::vlq_base128_le_u
        if: has_field_event_id
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: area_id
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id
      - id: event_type
        type: enum__explore_event_type
        if: has_field_event_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
      - id: explore_weight
        type: aux_types::vlq_base128_le_u
        if: has_field_explore_weight
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
    instances:
      has_field_event_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_scene_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_area_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_event_type: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_param: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_explore_weight: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_reward_id: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
