meta:
  id: flight_activity_excel_config
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
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: preview_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_preview_reward_id
  - id: start_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_start_quest_id
  - id: npc_id
    type: aux_types::vlq_base128_le_u
    if: has_field_npc_id
  - id: medal_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_medal_id
  - id: daily_factor_vec
    type: array_of__flight_daily_point_factor__length_s
    if: has_field_daily_factor_vec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_preview_reward_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_start_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_npc_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_medal_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_daily_factor_vec: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
types:
  array_of__flight_daily_point_factor__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: flight_daily_point_factor
        repeat: expr
        repeat-expr: length.value
  flight_daily_point_factor:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: time_factor
        type: aux_types::vlq_base128_le_u
        if: has_field_time_factor
      - id: gold_factor
        type: aux_types::vlq_base128_le_u
        if: has_field_gold_factor
    instances:
      has_field_time_factor: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_gold_factor: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
