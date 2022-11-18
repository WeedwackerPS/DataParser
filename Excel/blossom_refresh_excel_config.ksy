meta:
  id: blossom_refresh_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__blossom_refresh_type
    - ../EnumType/enum__blossom_reward_type
    - ../EnumType/enum__blossom_show_type
    - ../EnumType/enum__item_limit_type
    - ../EnumType/enum__open_state_type
    - ../EnumType/enum__blossom_refresh_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: refresh_type
    type: enum__blossom_refresh_type
    if: has_field_refresh_type
  - id: refresh_count
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_count
  - id: refresh_time
    type: aux_types::string
    if: has_field_refresh_time
  - id: open_state
    type: enum__open_state_type
    if: has_field_open_state
  - id: open_level
    type: aux_types::vlq_base128_le_u
    if: has_field_open_level
  - id: close_level
    type: aux_types::vlq_base128_le_u
    if: has_field_close_level
  - id: refresh_cond_vec
    type: array_of__blossom_refresh_cond__length_s
    if: has_field_refresh_cond_vec
  - id: revise_level
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level
  - id: item_limit_type
    type: enum__item_limit_type
    if: has_field_item_limit_type
  - id: blossom_chest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_blossom_chest_id
  - id: camp_update_need_count
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_update_need_count
  - id: round_max_count
    type: aux_types::vlq_base128_le_u
    if: has_field_round_max_count
  - id: drop_vec
    type: array_of__blossom_reward_excel_config__length_s
    if: has_field_drop_vec
  - id: client_show_type
    type: enum__blossom_show_type
    if: has_field_client_show_type
  - id: hide_bg
    type: u1
    if: has_field_hide_bg
  - id: reward_type
    type: enum__blossom_reward_type
    if: has_field_reward_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_icon: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_city_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_refresh_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_refresh_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_refresh_time: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_open_state: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_level: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_close_level: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_refresh_cond_vec: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_revise_level: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_item_limit_type: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_blossom_chest_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_camp_update_need_count: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_round_max_count: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_drop_vec: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_client_show_type: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_hide_bg: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_reward_type: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
types:
  array_of__blossom_refresh_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: blossom_refresh_cond
        repeat: expr
        repeat-expr: length.value
  blossom_refresh_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__blossom_refresh_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  array_of__blossom_reward_excel_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: blossom_reward_excel_config
        repeat: expr
        repeat-expr: length.value
  blossom_reward_excel_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: preview_reward
        type: aux_types::vlq_base128_le_u
        if: has_field_preview_reward
    instances:
      has_field_drop_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_preview_reward: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)