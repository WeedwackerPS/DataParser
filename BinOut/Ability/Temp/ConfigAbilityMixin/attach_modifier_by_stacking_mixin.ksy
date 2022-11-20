meta:
  id: attach_modifier_by_stacking_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: action_queue
    type: array_of__disp__config_ability_action__length_u
    if: has_field_action_queue
  - id: stacking_modifier
    type: aux_types::string
    if: has_field_stacking_modifier
instances:
  has_field_action_queue: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_stacking_modifier: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
