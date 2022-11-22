types:
  config_music_u_int32list_emptiness_condition:
    seq:
      - id: base
        type: config_music_u_int32list_condition
      - id: bit_field
        type: u1
      - id: value
        type: u1
        if: has_field_value
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      game_param:
        value: base.game_param
      id:
        value: base.id
