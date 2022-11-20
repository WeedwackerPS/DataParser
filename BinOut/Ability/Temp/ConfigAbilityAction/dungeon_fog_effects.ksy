meta:
  id: dungeon_fog_effects
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: enable
    type: u1
    if: has_field_enable
  - id: camera_fog_effect_name
    type: aux_types::string
    if: has_field_camera_fog_effect_name
  - id: player_fog_effect_name
    type: aux_types::string
    if: has_field_player_fog_effect_name
  - id: local_offset
    type: vector
    if: has_field_local_offset
instances:
  has_field_enable: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_camera_fog_effect_name: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_player_fog_effect_name: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_local_offset: # Field №3
    value: (bit_field & 0b1000) != 0
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
