meta:
  id: config_dither
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: show_dither_duration
    type: f4
    if: has_field_show_dither_duration
  - id: start_dither_action
    type: config_dither_by_start_dither_action
    if: has_field_start_dither_action
  - id: between_camera_and_avatar
    type: config_dither_by_between_camera_and_avatar
    if: has_field_between_camera_and_avatar
  - id: normal_between_camera
    type: config_dither_by_normal_between_camera
    if: has_field_normal_between_camera
instances:
  has_field_show_dither_duration: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_start_dither_action: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_between_camera_and_avatar: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_normal_between_camera: # Field №3
    value: (bit_field & 0b1000) != 0
types:
  config_dither_by_start_dither_action:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b1) != 0
  config_dither_by_between_camera_and_avatar:
    seq:
      - id: bit_field
        type: u1
      - id: detect_dither_range
        type: f4
        if: has_field_detect_dither_range
    instances:
      has_field_detect_dither_range: # Field №0
        value: (bit_field & 0b1) != 0
  config_dither_by_normal_between_camera:
    seq:
      - id: bit_field
        type: u1
      - id: detect_dither_range
        type: f4
        if: has_field_detect_dither_range
    instances:
      has_field_detect_dither_range: # Field №0
        value: (bit_field & 0b1) != 0
