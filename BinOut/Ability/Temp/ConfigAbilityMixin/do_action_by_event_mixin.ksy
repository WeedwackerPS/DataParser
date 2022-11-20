meta:
  id: do_action_by_event_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - Common/array_of__config_ability_state_to_actions__length_u
    - ../../../../aux_types
    - ../../../../EnumType/enum__avatar_stage_type
    - ../../../../EnumType/enum__on_event_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__avatar_stage_type
    if: has_field_type
  - id: on_event
    type: enum__on_event_type
    if: has_field_on_event
  - id: pick_item_config_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pick_item_config_i_ds
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
  - id: on_ability_state_added
    type: array_of__config_ability_state_to_actions__length_u
    if: has_field_on_ability_state_added
  - id: on_ability_state_removed
    type: array_of__config_ability_state_to_actions__length_u
    if: has_field_on_ability_state_removed
  - id: cost_energy_delta_name
    type: aux_types::string
    if: has_field_cost_energy_delta_name
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_on_event: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_pick_item_config_i_ds: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_predicates: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_actions: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_on_ability_state_added: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_on_ability_state_removed: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_cost_energy_delta_name: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
