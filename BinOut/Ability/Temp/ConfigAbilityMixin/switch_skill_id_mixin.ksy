meta:
  id: switch_skill_id_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__switch_skill_priority
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: priority
    type: enum__switch_skill_priority
    if: has_field_priority
  - id: skill_index
    type: aux_types::vlq_base128_le_s
    if: has_field_skill_index
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: from_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_from_skill_id
  - id: to_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_to_skill_id
instances:
  has_field_priority: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_skill_index: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_skill_id: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_from_skill_id: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_to_skill_id: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
