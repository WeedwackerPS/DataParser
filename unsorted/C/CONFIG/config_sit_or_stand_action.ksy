types:
  config_sit_or_stand_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: is_sit
        type: u1
        if: has_field_is_sit
      - id: stand_direction
        type: enum__stand_direction
        if: has_field_stand_direction
    instances:
      has_field_is_sit: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_stand_direction: # Field №1
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
