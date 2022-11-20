meta:
  id: dummy_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - Common/array_of__array_of__disp__config_ability_action__length_u__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: action_list
    type: array_of__array_of__disp__config_ability_action__length_u__length_u
    if: has_field_action_list
instances:
  has_field_action_list: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
