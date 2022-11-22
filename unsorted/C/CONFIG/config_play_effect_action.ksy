types:
  config_play_effect_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: effect_index
        type: aux_types::string
        if: has_field_effect_index
      - id: pattern_name
        type: aux_types::string
        if: has_field_pattern_name
      - id: pos
        type: vector
        if: has_field_pos
      - id: euler
        type: vector
        if: has_field_euler
      - id: scale
        type: vector
        if: has_field_scale
      - id: is_loop
        type: u1
        if: has_field_is_loop
      - id: attach_to_entity
        type: u1
        if: has_field_attach_to_entity
      - id: is_remove
        type: u1
        if: has_field_is_remove
    instances:
      has_field_effect_index: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_pattern_name: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_pos: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_euler: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_scale: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_is_loop: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_attach_to_entity: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_is_remove: # Field №7
        value: (bit_field & 0b10000000) != 0
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
