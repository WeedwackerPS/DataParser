meta:
  id: by_skill_ready
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_id
  - id: skill_slot
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_slot
instances:
  has_field_skill_id: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_skill_slot: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
