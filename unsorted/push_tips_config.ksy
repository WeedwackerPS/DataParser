types:
  push_tips_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: push_tips_id
        type: aux_types::vlq_base128_le_u
        if: has_field_push_tips_id
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: title
        type: aux_types::vlq_base128_le_u
        if: has_field_title
      - id: subtitle
        type: aux_types::vlq_base128_le_u
        if: has_field_subtitle
      - id: push_tips_type
        type: enum__push_tips_type
        if: has_field_push_tips_type
      - id: show_icon
        type: aux_types::string
        if: has_field_show_icon
      - id: tab_icon
        type: aux_types::string
        if: has_field_tab_icon
      - id: tutorial_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tutorial_id
      - id: codex_type
        type: enum__push_tips_codex_type
        if: has_field_codex_type
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: show_immediately
        type: u1
        if: has_field_show_immediately
    instances:
      has_field_push_tips_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reward_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_title: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_subtitle: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_push_tips_type: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_show_icon: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_tab_icon: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_tutorial_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_codex_type: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_group_id: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_show_immediately: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
