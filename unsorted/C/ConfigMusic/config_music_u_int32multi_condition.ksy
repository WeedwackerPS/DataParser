types:
  config_music_u_int32multi_condition:
    seq:
      - id: base
        type: config_music_parameter_condition
      - id: bit_field
        type: u1
      - id: values
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_values
    instances:
      has_field_values: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      game_param:
        value: base.game_param
      id:
        value: base.id
