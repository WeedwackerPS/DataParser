types:
  config_teleport_to_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: position
        type: vector
        if: has_field_position
      - id: forward
        type: vector
        if: has_field_forward
    instances:
      has_field_position: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_forward: # Field №1
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
