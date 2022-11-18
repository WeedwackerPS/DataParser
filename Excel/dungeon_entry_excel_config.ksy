meta:
  id: dungeon_entry_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
    - ../EnumType/enum__dungun_entry_type
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__dungeon_entry_satisfied_condition_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: dungeon_entry_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_entry_id
  - id: type
    type: enum__dungun_entry_type
    if: has_field_type
  - id: is_show_in_adv_handbook
    type: u1
    if: has_field_is_show_in_adv_handbook
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: cooldown_tips_dungeon_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cooldown_tips_dungeon_id
  - id: is_default_open
    type: u1
    if: has_field_is_default_open
  - id: is_daily_refresh
    type: u1
    if: has_field_is_daily_refresh
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: satisfied_cond
    type: array_of__dungeon_entry_satisfied_cond__length_s
    if: has_field_satisfied_cond
  - id: pic_path
    type: aux_types::string
    if: has_field_pic_path
  - id: system_open_ui_id
    type: aux_types::vlq_base128_le_u
    if: has_field_system_open_ui_id
  - id: reward_data_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_data_id
  - id: description_cycle_reward_list
    type: array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
    if: has_field_description_cycle_reward_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_dungeon_entry_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_is_show_in_adv_handbook: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cooldown_tips_dungeon_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_default_open: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_daily_refresh: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cond_comb: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_satisfied_cond: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_pic_path: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_system_open_ui_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_reward_data_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_description_cycle_reward_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
types:
  array_of__dungeon_entry_satisfied_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: dungeon_entry_satisfied_cond
        repeat: expr
        repeat-expr: length.value
  dungeon_entry_satisfied_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__dungeon_entry_satisfied_condition_type
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)