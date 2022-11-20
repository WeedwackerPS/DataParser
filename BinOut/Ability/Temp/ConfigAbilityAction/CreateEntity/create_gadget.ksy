meta:
  id: create_gadget
  endian: le
  license: GPLv2
  imports:
    - ../create_entity
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__target_type
seq:
  - id: base
    type: create_entity
  - id: bit_field
    type: u1
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: camp_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_id
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
  - id: by_server
    type: u1
    if: has_field_by_server
instances:
  has_field_gadget_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_camp_id: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_camp_target_type: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_by_server: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
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
