types:
  config_music_parameter_condition:
    seq:
      - id: base
        type: config_music_condition
      - id: bit_field
        type: u1
      - id: game_param
        type: enum__music_game_param
        if: has_field_game_param
    instances:
      has_field_game_param: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      id:
        value: base.id
