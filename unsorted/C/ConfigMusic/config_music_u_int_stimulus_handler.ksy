types:
  config_music_u_int_stimulus_handler:
    seq:
      - id: base
        type: config_music_parameterized_stimulus_handler
      - id: bit_field
        type: u1
      - id: uint_param
        type: aux_types::vlq_base128_le_u
        if: has_field_uint_param
    instances:
      has_field_uint_param: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
