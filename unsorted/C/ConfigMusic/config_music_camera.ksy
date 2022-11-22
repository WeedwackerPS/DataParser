types:
  config_music_camera:
    seq:
      - id: bit_field
        type: u1
      - id: res_name
        type: aux_types::string
        if: has_field_res_name
      - id: condition_list
        type: array_of__camera_play_condition__length_u
        if: has_field_condition_list
      - id: style
        type: aux_types::vlq_base128_le_u
        if: has_field_style
      - id: disable_dither
        type: u1
        if: has_field_disable_dither
    instances:
      has_field_res_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_condition_list: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_style: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_disable_dither: # Field №3
        value: (bit_field & 0b1000) != 0
