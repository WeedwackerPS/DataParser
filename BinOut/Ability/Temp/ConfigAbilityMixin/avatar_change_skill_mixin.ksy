meta:
  id: avatar_change_skill_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__switch_skill_priority
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: index
    type: aux_types::vlq_base128_le_s
    if: has_field_index
  - id: priority
    type: enum__switch_skill_priority
    if: has_field_priority
  - id: aim_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_aim_skill_id
  - id: jump_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_jump_skill_id
  - id: fly_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fly_skill_id
  - id: change_on_add
    type: u1
    if: has_field_change_on_add
instances:
  has_field_index: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_priority: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_aim_skill_id: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_jump_skill_id: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_fly_skill_id: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_change_on_add: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
