meta:
  id: server_lua_call
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__lua_call_type
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: lua_call_type
    type: enum__lua_call_type
    if: has_field_lua_call_type
  - id: is_target
    type: u1
    if: has_field_is_target
  - id: call_param_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_call_param_list
  - id: func_name
    type: aux_types::string
    if: has_field_func_name
  - id: param_num
    type: aux_types::vlq_base128_le_u
    if: has_field_param_num
  - id: param1
    type: aux_types::dynamic_float
    if: has_field_param1
  - id: param2
    type: aux_types::dynamic_float
    if: has_field_param2
  - id: param3
    type: aux_types::dynamic_float
    if: has_field_param3
instances:
  has_field_lua_call_type: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_is_target: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_call_param_list: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_func_name: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_param_num: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_param1: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_param2: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_param3: # Field №7
    value: (bit_field & 0b10000000) != 0
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
