meta:
  id: attach_to_monster_air_state_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: is_air_move
    type: u1
    if: has_field_is_air_move
instances:
  has_field_modifier_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_air_move: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
