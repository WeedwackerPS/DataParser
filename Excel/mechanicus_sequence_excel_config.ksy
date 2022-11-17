meta:
  id: mechanicus_sequence_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: sequence_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sequence_id
  - id: mechanicus_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanicus_id
  - id: open_level
    type: aux_types::vlq_base128_le_u
    if: has_field_open_level
  - id: open_gear_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_open_gear_list
  - id: gear_level_limite
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_level_limite
  - id: gear_money_limite
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_money_limite
  - id: open_map_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_open_map_list
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: cond_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_id
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
instances:
  has_field_sequence_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_mechanicus_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_gear_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_gear_level_limite: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_gear_money_limite: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_open_map_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_activity_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cond_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_reward_preview_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
