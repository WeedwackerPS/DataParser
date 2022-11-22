types:
  config_black_screen_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: black_screen_type
        type: enum__black_screen_type
        if: has_field_black_screen_type
      - id: duration_to_black
        type: f4
        if: has_field_duration_to_black
      - id: duration_keep_black
        type: f4
        if: has_field_duration_keep_black
      - id: duration_from_black
        type: f4
        if: has_field_duration_from_black
      - id: change_to_intee_pos
        type: u1
        if: has_field_change_to_intee_pos
      - id: intee_pos
        type: aux_types::string
        if: has_field_intee_pos
      - id: text_map_id
        type: aux_types::string
        if: has_field_text_map_id
      - id: text_shake
        type: u1
        if: has_field_text_shake
      - id: use_white_screen
        type: u1
        if: has_field_use_white_screen
      - id: use_text_fade
        type: u1
        if: has_field_use_text_fade
    instances:
      has_field_black_screen_type: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_duration_to_black: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_duration_keep_black: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_duration_from_black: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_change_to_intee_pos: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_intee_pos: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_text_map_id: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_text_shake: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_use_white_screen: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_use_text_fade: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
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
