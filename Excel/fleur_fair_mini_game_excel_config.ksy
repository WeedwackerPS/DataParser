meta:
  id: fleur_fair_mini_game_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__fleur_fair_mini_game_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: mini_game_type
    type: enum__fleur_fair_mini_game_type
    if: has_field_mini_game_type
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: reward_rank_low
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_rank_low
  - id: reward_rank_middle
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_rank_middle
  - id: reward_rank_high
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_rank_high
  - id: watcher_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_list
  - id: avatar_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_avatar_id_list
  - id: avatar_score
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_avatar_score
  - id: tips_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_tips_id_list
  - id: tips_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_tips_desc
  - id: pos
    type: array_of__f4__length_u
    if: has_field_pos
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_mini_game_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gallery_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_config_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_open_day: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_quest_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_reward_rank_low: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_rank_middle: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_reward_rank_high: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_watcher_id_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_avatar_id_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_avatar_score: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_tips_id_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_tips_desc: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_pos: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
