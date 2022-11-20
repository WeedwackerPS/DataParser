meta:
  id: show_ui_combat_bar
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: show
    type: u1
    if: has_field_show
  - id: sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_id
  - id: changing_sort_id
    type: u1
    if: has_field_changing_sort_id
  - id: fore
    type: u1
    if: has_field_fore
instances:
  has_field_show: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_sort_id: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_changing_sort_id: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_fore: # Field №3
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
