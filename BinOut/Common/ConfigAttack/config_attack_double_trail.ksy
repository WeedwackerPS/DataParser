meta:
  id: config_attack_double_trail
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - config_attack_trail
seq:
  - id: base
    type: config_attack_trail
  - id: bit_field
    type: u1
  - id: trail2name
    type: aux_types::string
    if: has_field_trail2name
  - id: trail_start2name
    type: aux_types::string
    if: has_field_trail_start2name
instances:
  has_field_trail2name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_trail_start2name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  trail_name:
    value: base.trail_name
  trail_start_name:
    value: base.trail_start_name
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
