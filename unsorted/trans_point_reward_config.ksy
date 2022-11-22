types:
  trans_point_reward_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_id
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: group_id_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_group_id_vec
      - id: unlock_area_id_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_unlock_area_id_vec
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_point_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_reward_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_group_id_vec: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_unlock_area_id_vec: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
