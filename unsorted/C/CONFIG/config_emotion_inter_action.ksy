types:
  config_emotion_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: emotion_name
        type: aux_types::string
        if: has_field_emotion_name
      - id: emotion_transition_time
        type: f4
        if: has_field_emotion_transition_time
      - id: look_at_offset
        type: vector
        if: has_field_look_at_offset
      - id: blink_enabled
        type: u1
        if: has_field_blink_enabled
      - id: blink_min_gap
        type: f4
        if: has_field_blink_min_gap
      - id: blink_max_gap
        type: f4
        if: has_field_blink_max_gap
      - id: blink_duration
        type: f4
        if: has_field_blink_duration
    instances:
      has_field_emotion_name: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_emotion_transition_time: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_look_at_offset: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_blink_enabled: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_blink_min_gap: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_blink_max_gap: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_blink_duration: # Field №6
        value: (bit_field & 0b1000000) != 0
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
