meta:
  id: create_tile
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_base_attack_pattern
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: tile_name
    type: aux_types::string
    if: has_field_tile_name
  - id: attack_pattern
    type: disp__config_base_attack_pattern
    if: has_field_attack_pattern
instances:
  has_field_tile_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_attack_pattern: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
