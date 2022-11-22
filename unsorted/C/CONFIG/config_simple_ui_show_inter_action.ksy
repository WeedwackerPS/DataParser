types:
  config_simple_ui_show_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: is_close
        type: u1
        if: has_field_is_close
      - id: param
        type: aux_types::string
        if: has_field_param
      - id: multi_param
        type: array_of__aux_types__string__length_u
        if: has_field_multi_param
    instances:
      has_field_context_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_close: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_param: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_multi_param: # Field №3
        value: (bit_field & 0b1000) != 0
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
