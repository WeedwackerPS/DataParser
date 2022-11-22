meta:
  id: config_avatar_shoot
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: normal_shoot
    type: config_shoot
    if: has_field_normal_shoot
  - id: aiming_shoot
    type: config_shoot
    if: has_field_aiming_shoot
instances:
  has_field_normal_shoot: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_aiming_shoot: # Field №1
    value: (bit_field & 0b10) != 0
types:
  config_shoot:
    seq:
      - id: bit_field
        type: u1
      - id: bullet_born_attach_point
        type: aux_types::string
        if: has_field_bullet_born_attach_point
      - id: detect_range_from_viewport
        type: f4
        if: has_field_detect_range_from_viewport
      - id: detect_radius_from_viewport
        type: f4
        if: has_field_detect_radius_from_viewport
      - id: auto_focus_min_range
        type: f4
        if: has_field_auto_focus_min_range
      - id: auto_focus_max_range
        type: f4
        if: has_field_auto_focus_max_range
    instances:
      has_field_bullet_born_attach_point: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_detect_range_from_viewport: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_detect_radius_from_viewport: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_auto_focus_min_range: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_auto_focus_max_range: # Field №4
        value: (bit_field & 0b10000) != 0
