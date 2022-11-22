types:
  config_hide_widget_pet:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: is_hide
        type: u1
        if: has_field_is_hide
    instances:
      has_field_is_hide: # Field №0
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
