meta:
  id: do_tile_action_manager_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: duration
    type: f4
    if: has_field_duration
  - id: action_id
    type: aux_types::string
    if: has_field_action_id
  - id: action_pos_key
    type: aux_types::string
    if: has_field_action_pos_key
  - id: action_radius_key
    type: aux_types::string
    if: has_field_action_radius_key
  - id: reaction_force_use_owner_prop
    type: u1
    if: has_field_reaction_force_use_owner_prop
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_duration: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_action_id: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_action_pos_key: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_action_radius_key: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_reaction_force_use_owner_prop: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_actions: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
