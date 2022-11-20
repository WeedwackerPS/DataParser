meta:
  id: hunting_refresh_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__hunting_offer_difficulty_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: difficulty
    type: enum__hunting_offer_difficulty_type
    if: has_field_difficulty
  - id: region_id
    type: aux_types::vlq_base128_le_u
    if: has_field_region_id
  - id: finish_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_reward_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_city_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_difficulty: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_region_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_finish_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
