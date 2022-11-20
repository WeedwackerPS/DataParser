meta:
  id: config_attack_circle
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__circle_detect_direction
    - config_simple_attack_pattern
seq:
  - id: base
    type: config_simple_attack_pattern
  - id: bit_field
    type: u1
  - id: height
    type: f4
    if: has_field_height
  - id: fan_angle
    type: f4
    if: has_field_fan_angle
  - id: radius
    type: aux_types::dynamic_float
    if: has_field_radius
  - id: inner_radius
    type: aux_types::dynamic_float
    if: has_field_inner_radius
  - id: detect_direction
    type: enum__circle_detect_direction
    if: has_field_detect_direction
instances:
  has_field_height: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_fan_angle: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_radius: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_inner_radius: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_detect_direction: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  use_custom_shape:
    value: base.use_custom_shape
  trigger_type:
    value: base.trigger_type
  check_hit_layer_type:
    value: base.check_hit_layer_type
  hit_scene:
    value: base.hit_scene
  trigger_cd:
    value: base.trigger_cd
  filter_by_frame:
    value: base.filter_by_frame
  ignore_massive:
    value: base.ignore_massive
  entity_attack_filter:
    value: base.entity_attack_filter
  massive_attack_ratio:
    value: base.massive_attack_ratio
  born:
    value: base.born
