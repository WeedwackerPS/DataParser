meta:
  id: change_enviro_weather
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: climate_type
    type: aux_types::vlq_base128_le_u
    if: has_field_climate_type
  - id: trans_duration
    type: f4
    if: has_field_trans_duration
instances:
  has_field_area_id: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_climate_type: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_trans_duration: # Field №2
    value: (bit_field & 0b100) != 0
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
