types:
  new_activity_preview_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: intro_title
        type: aux_types::vlq_base128_le_u
        if: has_field_intro_title
      - id: intro_content
        type: aux_types::vlq_base128_le_u
        if: has_field_intro_content
      - id: reward_preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview_id
      - id: pre_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_pre_quest_id
      - id: open_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_open_quest_id
      - id: push_tips_id
        type: aux_types::vlq_base128_le_u
        if: has_field_push_tips_id
    instances:
      has_field_activity_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_desc: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_intro_title: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_intro_content: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_reward_preview_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_pre_quest_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_open_quest_id: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_push_tips_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
