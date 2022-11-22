types:
  config_ui_trigger_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: param
        type: aux_types::string
        if: has_field_param
    instances:
      has_field_context_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
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
