meta:
  id: effigy_challenge_excel_config
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
  - id: day_index
    type: aux_types::vlq_base128_le_u
    if: has_field_day_index
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: prefab
    type: aux_types::string
    if: has_field_prefab
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: content
    type: aux_types::vlq_base128_le_u
    if: has_field_content
  - id: limiting_condition_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_limiting_condition_vec
  - id: up_avatar_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_up_avatar_vec
  - id: first_pass_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_pass_reward_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_day_index: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_dungeon_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_prefab: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_content: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_limiting_condition_vec: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_up_avatar_vec: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_first_pass_reward_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
