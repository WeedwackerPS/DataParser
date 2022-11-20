meta:
  id: create_entity
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../EnumType/enum__ability_targetting
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: owner_is_target
    type: u1
    if: has_field_owner_is_target
  - id: owner_is
    type: enum__ability_targetting
    if: has_field_owner_is
  - id: prop_owner_is
    type: enum__ability_targetting
    if: has_field_prop_owner_is
  - id: life_by_owner_is_alive
    type: u1
    if: has_field_life_by_owner_is_alive
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: check_ground
    type: check_ground
    if: has_field_check_ground
  - id: sight_group_with_owner
    type: u1
    if: has_field_sight_group_with_owner
instances:
  has_field_owner_is_target: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_owner_is: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_prop_owner_is: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_life_by_owner_is_alive: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_born: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_check_ground: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_sight_group_with_owner: # Field №6
    value: (bit_field & 0b1000000) != 0
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
  check_ground:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: raycast_up_height
        type: f4
        if: has_field_raycast_up_height
      - id: raycast_down_height
        type: f4
        if: has_field_raycast_down_height
      - id: stick_to_ground_if_valid
        type: u1
        if: has_field_stick_to_ground_if_valid
      - id: dont_create_if_invalid
        type: u1
        if: has_field_dont_create_if_invalid
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_raycast_up_height: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_raycast_down_height: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_stick_to_ground_if_valid: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_dont_create_if_invalid: # Field №4
        value: (bit_field & 0b10000) != 0
