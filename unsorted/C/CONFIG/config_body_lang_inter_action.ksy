types:
  config_body_lang_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: is_continue
        type: u1
        if: has_field_is_continue
      - id: body_lang_param
        type: aux_types::vlq_base128_le_s
        if: has_field_body_lang_param
      - id: loop_state
        type: aux_types::vlq_base128_le_s
        if: has_field_loop_state
      - id: force_interrupt
        type: u1
        if: has_field_force_interrupt
      - id: random_param_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_random_param_list
      - id: force_do_free_style
        type: u1
        if: has_field_force_do_free_style
      - id: can_do_repeat_free_style
        type: u1
        if: has_field_can_do_repeat_free_style
    instances:
      has_field_is_continue: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_body_lang_param: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_loop_state: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_force_interrupt: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_random_param_list: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_force_do_free_style: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_can_do_repeat_free_style: # Field №6
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
