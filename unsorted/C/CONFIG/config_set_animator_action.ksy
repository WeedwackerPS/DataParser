types:
  config_set_animator_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: param_type
        type: enum__animator_param_type2
        if: has_field_param_type
      - id: param_name
        type: aux_types::string
        if: has_field_param_name
      - id: int_value
        type: aux_types::vlq_base128_le_s
        if: has_field_int_value
      - id: float_value
        type: f4
        if: has_field_float_value
      - id: bool_value
        type: u1
        if: has_field_bool_value
    instances:
      has_field_param_type: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_param_name: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_int_value: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_float_value: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_bool_value: # Field №4
        value: (bit_field & 0b10000) != 0
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
