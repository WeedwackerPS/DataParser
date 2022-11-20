meta:
  id: generate_elem_ball
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__drop_elem_ball_type
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: drop_type
    type: enum__drop_elem_ball_type
    if: has_field_drop_type
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: ratio
    type: aux_types::dynamic_float
    if: has_field_ratio
  - id: base_energy
    type: f4
    if: has_field_base_energy
instances:
  has_field_drop_type: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_config_id: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_born: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_ratio: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_base_energy: # Field №4
    value: (bit_field & 0b10000) != 0
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
