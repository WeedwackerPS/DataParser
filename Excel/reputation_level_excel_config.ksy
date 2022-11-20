meta:
  id: reputation_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: level_name
    type: aux_types::vlq_base128_le_u
    if: has_field_level_name
  - id: next_level_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_next_level_exp
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: request_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_request_group_id
  - id: request_num
    type: aux_types::vlq_base128_le_u
    if: has_field_request_num
  - id: request_accept_num
    type: aux_types::vlq_base128_le_u
    if: has_field_request_accept_num
  - id: function_id
    type: aux_types::vlq_base128_le_u
    if: has_field_function_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_city_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_level_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_next_level_exp: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_request_group_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_request_num: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_request_accept_num: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_function_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
