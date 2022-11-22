types:
  config_simple_black_screen_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: duration_to_black
        type: f4
        if: has_field_duration_to_black
      - id: duration_keep_black
        type: f4
        if: has_field_duration_keep_black
      - id: duration_from_black
        type: f4
        if: has_field_duration_from_black
      - id: text_map_id
        type: aux_types::string
        if: has_field_text_map_id
      - id: use_white_screen
        type: u1
        if: has_field_use_white_screen
      - id: use_text_fade
        type: u1
        if: has_field_use_text_fade
    instances:
      has_field_duration_to_black: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_duration_keep_black: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_duration_from_black: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_text_map_id: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_use_white_screen: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_use_text_fade: # Field №5
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
