meta:
  id: config_attack_box
  endian: le
  license: GPLv2
  imports:
    - config_simple_attack_pattern
    - ../dynamic_float_vector
seq:
  - id: base
    type: config_simple_attack_pattern
  - id: bit_field
    type: u1
  - id: size
    type: dynamic_float_vector
    if: has_field_size
  - id: mute_hit_behind_scene
    type: u1
    if: has_field_mute_hit_behind_scene
instances:
  has_field_size: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_mute_hit_behind_scene: # Field №1
    value: (bit_field & 0b10) != 0
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
