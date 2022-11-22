types:
  config_visible_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: is_visible
        type: u1
        if: has_field_is_visible
      - id: use_dither
        type: u1
        if: has_field_use_dither
    instances:
      has_field_is_visible: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_use_dither: # Field №1
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
