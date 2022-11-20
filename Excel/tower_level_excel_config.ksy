meta:
  id: tower_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__tower_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_id
  - id: level_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_group_id
  - id: level_index
    type: aux_types::vlq_base128_le_u
    if: has_field_level_index
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: conds
    type: array_of__tower_condition__length_s
    if: has_field_conds
  - id: tower_buff_config_str_list
    type: array_of__aux_types__string__length_u
    if: has_field_tower_buff_config_str_list
  - id: daily_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_reward_id
  - id: first_pass_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_pass_reward_id
  - id: monster_level
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_level
  - id: first_monster_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_first_monster_list
  - id: second_monster_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_second_monster_list
instances:
  has_field_level_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_index: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_dungeon_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_conds: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_tower_buff_config_str_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_daily_reward_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_first_pass_reward_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_monster_level: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_first_monster_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_second_monster_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
types:
  array_of__tower_condition__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: tower_condition
        repeat: expr
        repeat-expr: length.value
  tower_condition:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: tower_cond_type
        type: enum__tower_cond_type
        if: has_field_tower_cond_type
      - id: argument_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_argument_list
    instances:
      has_field_tower_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_argument_list: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
