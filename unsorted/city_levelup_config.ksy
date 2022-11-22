types:
  city_levelup_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: level
        type: aux_types::vlq_base128_le_u
        if: has_field_level
      - id: consume_item
        type: world_area_levelup_consume_item
        if: has_field_consume_item
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: action_vec
        type: array_of__world_area_levelup_action__length_s
        if: has_field_action_vec
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_city_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_level: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_consume_item: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_reward_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_action_vec: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
