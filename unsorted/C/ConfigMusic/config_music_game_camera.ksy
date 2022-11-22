types:
  config_music_game_camera:
    seq:
      - id: bit_field
        type: u1
      - id: camera_config_list
        type: array_of__config_music_camera__length_u
        if: has_field_camera_config_list
    instances:
      has_field_camera_config_list: # Field №0
        value: (bit_field & 0b1) != 0
