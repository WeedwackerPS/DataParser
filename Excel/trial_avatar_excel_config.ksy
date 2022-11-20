meta:
  id: trial_avatar_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: trial_avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_avatar_id
  - id: trial_avatar_param_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_avatar_param_list
  - id: trial_weapon_param_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_weapon_param_list
  - id: trial_skill_depot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_trial_skill_depot_id
  - id: is_dynamic_level
    type: u1
    if: has_field_is_dynamic_level
instances:
  has_field_trial_avatar_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_trial_avatar_param_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_trial_weapon_param_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_trial_skill_depot_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_dynamic_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
