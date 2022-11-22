types:
  config_music_string_absence_stimulus_handler:
    seq:
      - id: base
        type: config_music_string_multi_value_stimulus_handler
    instances:
      # Base class fields
      string_params:
        value: base.string_params
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
