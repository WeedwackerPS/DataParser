meta:
  id: element_batch_predicated
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../ArrayType/array_of__enum__element_type__length_u
seq:
  - id: bit_field
    type: u1
  - id: element_type_arr
    type: array_of__enum__element_type__length_u
    if: has_field_element_type_arr
  - id: success_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_success_actions
  - id: fail_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_fail_actions
instances:
  has_field_element_type_arr: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_success_actions: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_fail_actions: # Field №2
    value: (bit_field & 0b100) != 0
