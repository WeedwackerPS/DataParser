types:
  config_play_frame_face_animation_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: animation
        type: aux_types::string
        if: has_field_animation
      - id: mode
        type: enum__frame_face_animation_play_type
        if: has_field_mode
    instances:
      has_field_animation: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_mode: # Field №1
        value: (bit_field & 0b10) != 0
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
