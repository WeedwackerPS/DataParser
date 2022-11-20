meta:
  id: home_world_event_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__home_avatar_event_cond_type
    - ../EnumType/enum__home_avatar_event_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: event_id
    type: aux_types::vlq_base128_le_u
    if: has_field_event_id
  - id: event_type
    type: enum__home_avatar_event_type
    if: has_field_event_type
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: talk_id
    type: aux_types::vlq_base128_le_u
    if: has_field_talk_id
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: furniture_suit_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_suit_id
  - id: lasttime
    type: aux_types::vlq_base128_le_u
    if: has_field_lasttime
  - id: order
    type: aux_types::vlq_base128_le_u
    if: has_field_order
  - id: condition_type1
    type: enum__home_avatar_event_cond_type
    if: has_field_condition_type1
  - id: condition_param1
    type: aux_types::vlq_base128_le_u
    if: has_field_condition_param1
  - id: condition_type2
    type: enum__home_avatar_event_cond_type
    if: has_field_condition_type2
  - id: condition_param2
    type: aux_types::vlq_base128_le_u
    if: has_field_condition_param2
instances:
  has_field_event_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_event_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_avatar_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_talk_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_furniture_suit_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_lasttime: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_order: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_condition_type1: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_condition_param1: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_condition_type2: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_condition_param2: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
