meta:
  id: activity_chess_level_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__card_fortune_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: exp_to_next
    type: aux_types::vlq_base128_le_u
    if: has_field_exp_to_next
  - id: home_hp
    type: aux_types::vlq_base128_le_u
    if: has_field_home_hp
  - id: initial_build
    type: aux_types::vlq_base128_le_u
    if: has_field_initial_build
  - id: card_count
    type: aux_types::vlq_base128_le_u
    if: has_field_card_count
  - id: card_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_card_cost
  - id: card_fortune
    type: enum__card_fortune_type
    if: has_field_card_fortune
  - id: fortune_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_fortune_list
  - id: free_card_count
    type: aux_types::vlq_base128_le_u
    if: has_field_free_card_count
  - id: is_new_gear_unlocked
    type: u1
    if: has_field_is_new_gear_unlocked
  - id: is_new_card_unlocked
    type: u1
    if: has_field_is_new_card_unlocked
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_exp_to_next: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_home_hp: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_initial_build: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_card_count: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_card_cost: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_card_fortune: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_fortune_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_free_card_count: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_new_gear_unlocked: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_is_new_card_unlocked: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
