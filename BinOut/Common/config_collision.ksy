meta:
  id: config_collision
  endian: le
  license: GPLv2
  imports:
    - ../../EnumType/enum__collider_trigger_type
    - ../../EnumType/enum__target_type
    - ../../EnumType/enum__ccd_type
seq:
  - id: bit_field
    type: u1
  - id: ccd
    type: config_ccd
    if: has_field_ccd
  - id: trigger_type
    type: enum__collider_trigger_type
    if: has_field_trigger_type
  - id: trigger_cd
    type: f4
    if: has_field_trigger_cd
  - id: target_type
    type: enum__target_type
    if: has_field_target_type
  - id: ignore_scene
    type: u1
    if: has_field_ignore_scene
  - id: ignore_water
    type: u1
    if: has_field_ignore_water
  - id: born_with_trigger_enabled
    type: u1
    if: has_field_born_with_trigger_enabled
  - id: delay_enable_collision
    type: f4
    if: has_field_delay_enable_collision
instances:
  has_field_ccd: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_trigger_type: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_trigger_cd: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_target_type: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_ignore_scene: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_ignore_water: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_born_with_trigger_enabled: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_delay_enable_collision: # Field №7
    value: (bit_field & 0b10000000) != 0
types:
  config_ccd:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__ccd_type
        if: has_field_type
      - id: detect_cd
        type: f4
        if: has_field_detect_cd
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_detect_cd: # Field №1
        value: (bit_field & 0b10) != 0
