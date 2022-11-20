meta:
  id: do_watcher_system_action
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
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: authority_only
    type: u1
    if: has_field_authority_only
  - id: in_threat_list_only
    type: u1
    if: has_field_in_threat_list_only
instances:
  has_field_watcher_id: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_authority_only: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_in_threat_list_only: # Field №2
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
