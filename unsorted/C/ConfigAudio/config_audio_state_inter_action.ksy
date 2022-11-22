types:
  config_audio_state_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: state_group
        type: aux_types::string
        if: has_field_state_group
      - id: state
        type: aux_types::string
        if: has_field_state
    instances:
      has_field_state_group: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_state: # Field №1
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
