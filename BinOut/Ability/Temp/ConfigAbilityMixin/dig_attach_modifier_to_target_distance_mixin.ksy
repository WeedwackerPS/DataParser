meta:
  id: dig_attach_modifier_to_target_distance_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: target_id
    type: aux_types::vlq_base128_le_u
    if: has_field_target_id
  - id: distance
    type: f4
    if: has_field_distance
  - id: unfound_effect_pattern
    type: aux_types::string
    if: has_field_unfound_effect_pattern
  - id: found_effect_pattern
    type: aux_types::string
    if: has_field_found_effect_pattern
  - id: unfound_action_array
    type: array_of__disp__config_ability_action__length_u
    if: has_field_unfound_action_array
  - id: found_action_array
    type: array_of__disp__config_ability_action__length_u
    if: has_field_found_action_array
instances:
  has_field_target_id: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_distance: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_unfound_effect_pattern: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_found_effect_pattern: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_unfound_action_array: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_found_action_array: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
