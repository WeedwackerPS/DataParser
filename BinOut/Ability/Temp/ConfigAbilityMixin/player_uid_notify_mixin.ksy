meta:
  id: player_uid_notify_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../EnumType/enum__relational_operator
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: op_param
    type: aux_types::string
    if: has_field_op_param
  - id: op_type
    type: aux_types::vlq_base128_le_u
    if: has_field_op_type
  - id: logic
    type: enum__relational_operator
    if: has_field_logic
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_op_param: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_op_type: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_logic: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_actions: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
