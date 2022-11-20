meta:
  id: modify_skill_cd_by_modifier_count_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__target_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: target_type
    type: enum__target_type
    if: has_field_target_type
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: cd_delta
    type: aux_types::dynamic_float
    if: has_field_cd_delta
instances:
  has_field_target_type: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_skill_id: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_cd_delta: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
