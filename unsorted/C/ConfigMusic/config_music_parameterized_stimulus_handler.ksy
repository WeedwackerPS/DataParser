types:
  config_music_parameterized_stimulus_handler:
    seq:
      - id: base
        type: config_music_stimulus_handler
    instances:
      # Base class fields
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
