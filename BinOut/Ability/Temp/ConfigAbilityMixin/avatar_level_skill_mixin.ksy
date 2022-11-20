meta:
  id: avatar_level_skill_mixin
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
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: skill_index
    type: aux_types::vlq_base128_le_s
    if: has_field_skill_index
instances:
  has_field_skill_id: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_skill_index: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
