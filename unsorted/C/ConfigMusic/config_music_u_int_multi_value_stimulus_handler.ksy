types:
  config_music_u_int_multi_value_stimulus_handler:
    seq:
      - id: base
        type: config_music_multi_value_parameterized_stimulus_handler
      - id: bit_field
        type: u1
      - id: uint_params
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_uint_params
    instances:
      has_field_uint_params: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      stimulus:
        value: base.stimulus
      transitions:
        value: base.transitions
