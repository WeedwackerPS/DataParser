meta:
  id: mp_play_group_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__mp_play_show_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: entry_id
    type: aux_types::vlq_base128_le_u
    if: has_field_entry_id
  - id: play_id
    type: aux_types::vlq_base128_le_u
    if: has_field_play_id
  - id: server_lua_call_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_server_lua_call_group_list
  - id: resin_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_resin_cost
  - id: material_cost_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_cost_id
  - id: material_cost_num
    type: aux_types::vlq_base128_le_u
    if: has_field_material_cost_num
  - id: up_avatar_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_up_avatar_list
  - id: client_show_type
    type: enum__mp_play_show_type
    if: has_field_client_show_type
  - id: reward_vec
    type: array_of__mp_crucible_reward_config__length_s
    if: has_field_reward_vec
  - id: activate_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_activate_group_list
  - id: group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_group_list
  - id: born_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_born_group_id
  - id: born_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_born_config_id
  - id: safe_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_safe_group_id
  - id: safe_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_safe_config_id
  - id: reborn_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reborn_group_id
  - id: reborn_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reborn_config_id
  - id: reward_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_group_id
  - id: reward_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_config_id
  - id: general_reward_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_general_reward_config_id
  - id: prepare_time
    type: aux_types::vlq_base128_le_u
    if: has_field_prepare_time
  - id: center_pos_list
    type: array_of__f4__length_u
    if: has_field_center_pos_list
  - id: center_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_center_radius
  - id: target_pos_list
    type: array_of__f4__length_u
    if: has_field_target_pos_list
  - id: revise_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_id
  - id: rate_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_rate_list
  - id: limit_region
    type: aux_types::string
    if: has_field_limit_region
  - id: ability_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_ability_group_list
  - id: is_disabled
    type: u1
    if: has_field_is_disabled
instances:
  has_field_entry_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_play_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_server_lua_call_group_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_resin_cost: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_material_cost_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_material_cost_num: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_up_avatar_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_client_show_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_vec: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_activate_group_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_group_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_born_group_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_born_config_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_safe_group_id: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_safe_config_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_reborn_group_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_reborn_config_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_reward_group_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_reward_config_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_general_reward_config_id: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_prepare_time: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_center_pos_list: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_center_radius: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_target_pos_list: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_revise_id: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_rate_list: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_limit_region: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_ability_group_list: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_is_disabled: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
types:
  array_of__mp_crucible_reward_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: mp_crucible_reward_config
        repeat: expr
        repeat-expr: length.value
  mp_crucible_reward_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: reward_preview
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview
    instances:
      has_field_drop_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reward_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_reward_preview: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
