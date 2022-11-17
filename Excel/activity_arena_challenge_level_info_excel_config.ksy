meta:
  id: activity_arena_challenge_level_info_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_id
  - id: level_name
    type: aux_types::vlq_base128_le_u
    if: has_field_level_name
  - id: monster_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_preview_id
  - id: monster_config
    type: aux_types::string
    if: has_field_monster_config
  - id: level_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_level_desc
  - id: level_desc_params
    type: aux_types::string
    if: has_field_level_desc_params
  - id: monster_preview_id_hard_challenge
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_preview_id_hard_challenge
  - id: monster_config_hard_challenge
    type: aux_types::string
    if: has_field_monster_config_hard_challenge
  - id: level_hard_challenge_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_level_hard_challenge_desc
  - id: level_hard_challenge_desc_params
    type: aux_types::string
    if: has_field_level_hard_challenge_desc_params
  - id: level_detail_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_level_detail_desc
  - id: challenge_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_challenge_id_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_schedule_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_level_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_monster_preview_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_monster_config: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_level_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_level_desc_params: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_monster_preview_id_hard_challenge: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_monster_config_hard_challenge: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_level_hard_challenge_desc: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_level_hard_challenge_desc_params: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_level_detail_desc: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_challenge_id_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
