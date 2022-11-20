meta:
  id: hunting_monster_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__hunting_monster_create_pos_type
    - ../EnumType/enum__hunting_monster_finish_type
    - ../EnumType/enum__hunting_offer_difficulty_type
    - ../EnumType/enum__hunting_refresh_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: monster_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_id
  - id: associated_monster_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_associated_monster_group_id
  - id: hunting_finish_type
    type: enum__hunting_monster_finish_type
    if: has_field_hunting_finish_type
  - id: affix
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_affix
  - id: ability_group
    type: aux_types::string
    if: has_field_ability_group
  - id: create_pos_type
    type: enum__hunting_monster_create_pos_type
    if: has_field_create_pos_type
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: revise_level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level_id
  - id: city_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_city_list
  - id: difficulty
    type: enum__hunting_offer_difficulty_type
    if: has_field_difficulty
  - id: limit_time
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_time
  - id: search_point_num
    type: aux_types::vlq_base128_le_u
    if: has_field_search_point_num
  - id: refresh_cond
    type: array_of__hunting_refresh_cond__length_s
    if: has_field_refresh_cond
  - id: initial_pose
    type: aux_types::vlq_base128_le_u
    if: has_field_initial_pose
  - id: clue_text_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_clue_text_id_list
  - id: news_text
    type: aux_types::vlq_base128_le_u
    if: has_field_news_text
  - id: trait_text
    type: aux_types::vlq_base128_le_u
    if: has_field_trait_text
  - id: mechanism_title1
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanism_title1
  - id: mechanism_desc1
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanism_desc1
  - id: mechanism_title2
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanism_title2
  - id: mechanism_desc2
    type: aux_types::vlq_base128_le_u
    if: has_field_mechanism_desc2
  - id: suite_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_suite_id
  - id: is_disable_wandering
    type: u1
    if: has_field_is_disable_wandering
  - id: route_id
    type: aux_types::vlq_base128_le_u
    if: has_field_route_id
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_monster_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_associated_monster_group_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_hunting_finish_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_affix: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_ability_group: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_create_pos_type: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_revise_level_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_city_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_difficulty: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_limit_time: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_search_point_num: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_refresh_cond: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_initial_pose: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_clue_text_id_list: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_news_text: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_trait_text: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_mechanism_title1: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_mechanism_desc1: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_mechanism_title2: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_mechanism_desc2: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_suite_id: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_is_disable_wandering: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_route_id: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
types:
  array_of__hunting_refresh_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: hunting_refresh_cond
        repeat: expr
        repeat-expr: length.value
  hunting_refresh_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: cond_type
        type: enum__hunting_refresh_cond_type
        if: has_field_cond_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
