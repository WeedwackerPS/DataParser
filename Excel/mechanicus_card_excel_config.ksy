meta:
  id: mechanicus_card_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__mechanicus_card_type
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: cost_points
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_points
  - id: card_type
    type: enum__mechanicus_card_type
    if: has_field_card_type
  - id: effect_id
    type: aux_types::vlq_base128_le_u
    if: has_field_effect_id
  - id: last_round
    type: aux_types::vlq_base128_le_u
    if: has_field_last_round
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: desc_param_list
    type: array_of__aux_types__string__length_u
    if: has_field_desc_param_list
  - id: gear_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cost_points: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_card_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_effect_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_last_round: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc_param_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_gear_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
