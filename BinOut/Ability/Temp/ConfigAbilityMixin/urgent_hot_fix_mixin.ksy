meta:
  id: urgent_hot_fix_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: logic_id
    type: aux_types::vlq_base128_le_u
    if: has_field_logic_id
  - id: think_interval
    type: f4
    if: has_field_think_interval
  - id: action_list
    type: array_of__disp__config_ability_action__length_u
    if: has_field_action_list
instances:
  has_field_logic_id: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_think_interval: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_action_list: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
