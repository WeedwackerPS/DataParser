meta:
  id: effigy_difficulty_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__effigy_difficulty
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: challenge_id
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_id
  - id: base_score
    type: aux_types::vlq_base128_le_u
    if: has_field_base_score
  - id: monster_difficulty
    type: enum__effigy_difficulty
    if: has_field_monster_difficulty
  - id: monster_level
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_level
  - id: score_ratio
    type: f4
    if: has_field_score_ratio
  - id: finish_challenge_index
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_challenge_index
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_challenge_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_base_score: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_monster_difficulty: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_monster_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_score_ratio: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_finish_challenge_index: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
