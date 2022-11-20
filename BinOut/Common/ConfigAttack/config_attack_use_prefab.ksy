meta:
  id: config_attack_use_prefab
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
  - id: prefab_path_name
    type: aux_types::string
    if: has_field_prefab_path_name
  - id: is_connect
    type: u1
    if: has_field_is_connect
  - id: duration
    type: f4
    if: has_field_duration
instances:
  has_field_prefab_path_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_is_connect: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_duration: # Field №2
    value: (bit_field & 0b100) != 0
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
