meta:
  id: activity_plant_flower_daily_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
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
  - id: reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_reward_id_list
instances:
  has_field_daily_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cost_item_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
