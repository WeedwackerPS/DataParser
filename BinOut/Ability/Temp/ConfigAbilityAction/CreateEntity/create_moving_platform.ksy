meta:
  id: create_moving_platform
  endian: le
  license: GPLv2
  imports:
    - create_gadget
    - ../../../../../aux_types
    - ../../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: create_gadget
  - id: bit_field
    type: u1
  - id: route_id
    type: aux_types::vlq_base128_le_u
    if: has_field_route_id
  - id: detect_height
    type: f4
    if: has_field_detect_height
  - id: detect_width
    type: f4
    if: has_field_detect_width
  - id: enable_rotation_offset
    type: u1
    if: has_field_enable_rotation_offset
  - id: fail_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_fail_actions
instances:
  has_field_route_id: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_detect_height: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_detect_width: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_enable_rotation_offset: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_fail_actions: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  gadget_id:
    value: base.gadget_id
  camp_id:
    value: base.camp_id
  camp_target_type:
    value: base.camp_target_type
  by_server:
    value: base.by_server
  owner_is_target:
    value: base.owner_is_target
  owner_is:
    value: base.owner_is
  prop_owner_is:
    value: base.prop_owner_is
  life_by_owner_is_alive:
    value: base.life_by_owner_is_alive
  born:
    value: base.born
  check_ground:
    value: base.check_ground
  sight_group_with_owner:
    value: base.sight_group_with_owner
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
