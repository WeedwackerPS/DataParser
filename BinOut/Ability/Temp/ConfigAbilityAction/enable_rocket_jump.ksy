meta:
  id: enable_rocket_jump
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__rocket_jump_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: type
    type: enum__rocket_jump_type
    if: has_field_type
  - id: enable
    type: u1
    if: has_field_enable
  - id: extention
    type: rocket_jump_ext
    if: has_field_extention
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_enable: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_extention: # Field №2
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
types:
  rocket_jump_ext:
    seq:
      - id: bit_field
        type: u1
      - id: xz_multiplier
        type: f4
        if: has_field_xz_multiplier
      - id: y_multiplier
        type: f4
        if: has_field_y_multiplier
    instances:
      has_field_xz_multiplier: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_y_multiplier: # Field №1
        value: (bit_field & 0b10) != 0
