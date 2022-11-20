meta:
  id: do_action_by_create_gadget_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__create_gadget_mixin_type
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: type
    type: enum__create_gadget_mixin_type
    if: has_field_type
  - id: action_queue
    type: array_of__disp__config_ability_action__length_u
    if: has_field_action_queue
instances:
  has_field_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_action_queue: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
