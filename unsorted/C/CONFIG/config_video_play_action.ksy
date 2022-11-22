types:
  config_video_play_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: video_name
        type: aux_types::string
        if: has_field_video_name
      - id: subtitle_id
        type: aux_types::vlq_base128_le_u
        if: has_field_subtitle_id
      - id: can_skip
        type: u1
        if: has_field_can_skip
      - id: bg_color
        type: color_vector
        if: has_field_bg_color
      - id: fade_in_time
        type: f4
        if: has_field_fade_in_time
      - id: fade_out_time
        type: f4
        if: has_field_fade_out_time
    instances:
      has_field_video_name: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_subtitle_id: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_can_skip: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_bg_color: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_fade_in_time: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_fade_out_time: # Field №5
        value: (bit_field & 0b100000) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
