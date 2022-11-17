meta:
  id: fish_skill_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__fish_skill_category
    - ../EnumType/enum__fish_skill_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: skill_category
    type: enum__fish_skill_category
    if: has_field_skill_category
  - id: skill_type
    type: enum__fish_skill_type
    if: has_field_skill_type
  - id: param
    type: array_of__f4__length_u
    if: has_field_param
  - id: strength
    type: aux_types::vlq_base128_le_u
    if: has_field_strength
  - id: force_factor
    type: f4
    if: has_field_force_factor
  - id: bonus_width
    type: array_of__f4__length_u
    if: has_field_bonus_width
  - id: bonus_duration
    type: array_of__f4__length_u
    if: has_field_bonus_duration
  - id: bonus_offset
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_bonus_offset
  - id: bonus_speed
    type: array_of__f4__length_u
    if: has_field_bonus_speed
  - id: duration
    type: f4
    if: has_field_duration
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_skill_category: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_skill_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_param: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_strength: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_force_factor: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_bonus_width: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_bonus_duration: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_bonus_offset: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_bonus_speed: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_duration: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_priority: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
