meta:
  id: activity_chess_schedule_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: day
    type: aux_types::vlq_base128_le_u
    if: has_field_day
  - id: exp_up_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_exp_up_limit
  - id: open_map_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_open_map_list
  - id: cond_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_id
instances:
  has_field_day: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_exp_up_limit: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_map_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cond_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
