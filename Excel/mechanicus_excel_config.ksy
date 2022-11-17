meta:
  id: mechanicus_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: mechanicus_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanicus_id
  - id: sequence_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_sequence_list
  - id: ticket_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_ticket_item_id
  - id: ticket_cost_count
    type: aux_types::vlq_base128_le_u
    if: has_field_ticket_cost_count
  - id: match_player_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_match_player_limit
  - id: open_gear_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_open_gear_list
  - id: open_map_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_open_map_list
  - id: teach_difficult_level
    type: aux_types::vlq_base128_le_u
    if: has_field_teach_difficult_level
  - id: punish_time
    type: aux_types::vlq_base128_le_u
    if: has_field_punish_time
instances:
  has_field_mechanicus_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_sequence_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ticket_item_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_ticket_cost_count: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_match_player_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_open_gear_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_open_map_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_teach_difficult_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_punish_time: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
