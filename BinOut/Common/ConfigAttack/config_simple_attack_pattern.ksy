meta:
  id: config_simple_attack_pattern
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - config_base_attack_pattern
seq:
  - id: base
    type: config_base_attack_pattern
  - id: bit_field
    type: u1
  - id: use_custom_shape
    type: u1
    if: has_field_use_custom_shape
instances:
  has_field_use_custom_shape: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
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
