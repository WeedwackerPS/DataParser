meta:
  id: activity_salesman_daily_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: daily_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_config_id
  - id: cost_item_list
    type: array_of__id_count_config__length_s
    if: has_field_cost_item_list
  - id: clus_pos
    type: aux_types::vlq_base128_le_u
    if: has_field_clus_pos
  - id: npc_talk
    type: aux_types::vlq_base128_le_u
    if: has_field_npc_talk
  - id: intro
    type: aux_types::vlq_base128_le_u
    if: has_field_intro
  - id: trace_position
    type: aux_types::string
    if: has_field_trace_position
instances:
  has_field_daily_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cost_item_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_clus_pos: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_npc_talk: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_intro: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_trace_position: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
