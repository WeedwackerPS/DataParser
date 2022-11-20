meta:
  id: reward_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: hcoin
    type: aux_types::vlq_base128_le_u
    if: has_field_hcoin
  - id: scoin
    type: aux_types::vlq_base128_le_u
    if: has_field_scoin
  - id: player_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_player_exp
  - id: avatar_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_exp
  - id: fetter_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_fetter_exp
  - id: resin
    type: aux_types::vlq_base128_le_u
    if: has_field_resin
  - id: reward_item_list
    type: array_of__reward_item_config__length_s
    if: has_field_reward_item_list
  - id: daily_output_limit
    type: optional_limit_config
    if: has_field_daily_output_limit
  - id: total_output_limit
    type: optional_limit_config
    if: has_field_total_output_limit
  - id: activity_output_limit
    type: optional_limit_config
    if: has_field_activity_output_limit
instances:
  has_field_reward_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_hcoin: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_scoin: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_player_exp: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_avatar_exp: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_fetter_exp: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_resin: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_reward_item_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_daily_output_limit: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_total_output_limit: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_activity_output_limit: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
types:
  array_of__reward_item_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: reward_item_config
        repeat: expr
        repeat-expr: length.value
  reward_item_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
      - id: item_count
        type: aux_types::vlq_base128_le_u
        if: has_field_item_count
    instances:
      has_field_item_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_item_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  optional_limit_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: is_unlimited
        type: u1
        if: has_field_is_unlimited
      - id: limit_count
        type: aux_types::vlq_base128_le_u
        if: has_field_limit_count
    instances:
      has_field_is_unlimited: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_limit_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
