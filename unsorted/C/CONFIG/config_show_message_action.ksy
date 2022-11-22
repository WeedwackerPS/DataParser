types:
  config_show_message_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: txt_map_str
        type: aux_types::string
        if: has_field_txt_map_str
    instances:
      has_field_txt_map_str: # Field №0
        value: (bit_field & 0b1) != 0
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
