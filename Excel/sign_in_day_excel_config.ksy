meta:
  id: sign_in_day_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: day_count
    type: aux_types::vlq_base128_le_u
    if: has_field_day_count
  - id: period_id
    type: aux_types::vlq_base128_le_u
    if: has_field_period_id
  - id: reward_item_list
    type: array_of__sign_in_reward_item_config__length_s
    if: has_field_reward_item_list
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_day_count: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_period_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_item_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__sign_in_reward_item_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: sign_in_reward_item_config
        repeat: expr
        repeat-expr: length.value
  sign_in_reward_item_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
      - id: count
        type: aux_types::vlq_base128_le_u
        if: has_field_count
      - id: quality
        type: aux_types::vlq_base128_le_u
        if: has_field_quality
    instances:
      has_field_item_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_quality: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
