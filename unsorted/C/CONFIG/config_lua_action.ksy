types:
  config_lua_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: invoke
        type: u1
        if: has_field_invoke
      - id: invoke_alias
        type: aux_types::string
        if: has_field_invoke_alias
      - id: invoke_param
        type: aux_types::vlq_base128_le_u
        if: has_field_invoke_param
    instances:
      has_field_invoke: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_invoke_alias: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_invoke_param: # Field №2
        value: (bit_field & 0b100) != 0
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
