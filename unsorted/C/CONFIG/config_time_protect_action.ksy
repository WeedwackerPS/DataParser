types:
  config_time_protect_action:
    seq:
      - id: base
        type: config_base_inter_action
    instances:
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
