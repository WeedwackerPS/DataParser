types:
  config_music_string_condition:
    seq:
      - id: base
        type: config_music_parameter_condition
      - id: bit_field
        type: u1
      - id: value
        type: aux_types::string
        if: has_field_value
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      game_param:
        value: base.game_param
      id:
        value: base.id
