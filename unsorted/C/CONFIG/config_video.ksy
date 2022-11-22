types:
  config_video:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: hero_diff
        type: u1
        if: has_field_hero_diff
      - id: video_name
        type: aux_types::string
        if: has_field_video_name
      - id: video_name_other
        type: aux_types::string
        if: has_field_video_name_other
      - id: subtitle_id
        type: aux_types::vlq_base128_le_u
        if: has_field_subtitle_id
      - id: subtitle_id_other
        type: aux_types::vlq_base128_le_u
        if: has_field_subtitle_id_other
      - id: can_skip
        type: u1
        if: has_field_can_skip
      - id: bg_color
        type: color_vector
        if: has_field_bg_color
      - id: fade_in_duration
        type: f4
        if: has_field_fade_in_duration
      - id: fade_out_duration
        type: f4
        if: has_field_fade_out_duration
    instances:
      has_field_hero_diff: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_video_name: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_video_name_other: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_subtitle_id: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_subtitle_id_other: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_can_skip: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_bg_color: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_fade_in_duration: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_fade_out_duration: # Field №8
        value: (bit_field.value & 0b100000000) != 0
