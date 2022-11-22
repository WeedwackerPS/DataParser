types:
  config_music_float_stimulus_handler:
    seq:
      - id: base
        type: config_music_parameterized_stimulus_handler
      - id: bit_field
        type: u1
      - id: float_param
        type: f4
        if: has_field_float_param
    instances:
      has_field_float_param: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
