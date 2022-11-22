types:
  config_cutscene_context:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__cutscene_index_type
        if: has_field_type
      - id: enable_force_streaming
        type: u1
        if: has_field_enable_force_streaming
      - id: cutscene_config
        type: config_timeline
        if: has_field_cutscene_config
      - id: video_config
        type: config_video
        if: has_field_video_config
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_enable_force_streaming: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_cutscene_config: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_video_config: # Field №3
        value: (bit_field & 0b1000) != 0
