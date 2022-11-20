meta:
  id: fish_pool_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    - ../EnumType/enum__fish_stock_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: stock_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_stock_list
  - id: stock_guarantee
    type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    if: has_field_stock_guarantee
  - id: stock_limit_list
    type: array_of__fish_stock_limit__length_s
    if: has_field_stock_limit_list
  - id: max_num
    type: aux_types::vlq_base128_le_u
    if: has_field_max_num
  - id: pool_name
    type: aux_types::vlq_base128_le_u
    if: has_field_pool_name
  - id: pool_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_pool_desc
  - id: ability_group
    type: aux_types::string
    if: has_field_ability_group
  - id: team_ability_group
    type: aux_types::string
    if: has_field_team_ability_group
  - id: drop_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_drop_id_list
  - id: daily_limit_num
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_limit_num
  - id: exclude_fish
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_exclude_fish
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_stock_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_stock_guarantee: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_stock_limit_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_max_num: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_pool_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_pool_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_ability_group: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_team_ability_group: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_drop_id_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_daily_limit_num: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_exclude_fish: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_city_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
types:
  array_of__fish_stock_limit__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: fish_stock_limit
        repeat: expr
        repeat-expr: length.value
  fish_stock_limit:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: stock_type
        type: enum__fish_stock_type
        if: has_field_stock_type
      - id: min_num
        type: aux_types::vlq_base128_le_u
        if: has_field_min_num
      - id: max_num
        type: aux_types::vlq_base128_le_u
        if: has_field_max_num
    instances:
      has_field_stock_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_min_num: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_max_num: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
