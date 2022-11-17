meta:
  id: trial_avatar_template_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: trial_avatar_level
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_avatar_level
  - id: trial_reliquary_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_reliquary_list
  - id: trial_talent_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_talent_list
  - id: trial_inherent_proud_skill_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_inherent_proud_skill_list
  - id: trial_avatar_skill_level
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_avatar_skill_level
instances:
  has_field_trial_avatar_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_trial_reliquary_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_trial_talent_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_trial_inherent_proud_skill_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_trial_avatar_skill_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
