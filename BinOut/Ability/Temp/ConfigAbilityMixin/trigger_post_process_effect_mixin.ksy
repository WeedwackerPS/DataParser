meta:
  id: trigger_post_process_effect_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: post_effect_asset_name
    type: aux_types::string
    if: has_field_post_effect_asset_name
  - id: duration
    type: f4
    if: has_field_duration
  - id: is_stage_effect
    type: u1
    if: has_field_is_stage_effect
instances:
  has_field_post_effect_asset_name: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_duration: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_is_stage_effect: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
