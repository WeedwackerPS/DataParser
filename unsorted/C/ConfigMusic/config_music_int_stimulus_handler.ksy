types:
  config_music_int_stimulus_handler:
    seq:
      - id: base
        type: config_music_parameterized_stimulus_handler
      - id: bit_field
        type: u1
      - id: int_param
        type: aux_types::vlq_base128_le_s
        if: has_field_int_param
    instances:
      has_field_int_param: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
