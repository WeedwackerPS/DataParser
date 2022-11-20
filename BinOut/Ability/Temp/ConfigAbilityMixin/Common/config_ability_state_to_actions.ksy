meta:
  id: config_ability_state_to_actions
  endian: le
  license: GPLv2
  imports:
    - ../../../../../EnumType/enum__ability_state
    - ../../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: bit_field
    type: u1
  - id: ability_state
    type: enum__ability_state
    if: has_field_ability_state
  - id: actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_actions
instances:
  has_field_ability_state: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_actions: # Field №1
    value: (bit_field & 0b10) != 0
