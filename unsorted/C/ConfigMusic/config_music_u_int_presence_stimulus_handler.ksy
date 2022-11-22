types:
  config_music_u_int_presence_stimulus_handler:
    seq:
      - id: base
        type: config_music_u_int_multi_value_stimulus_handler
    instances:
      # Base class fields
      uint_params:
        value: base.uint_params
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
