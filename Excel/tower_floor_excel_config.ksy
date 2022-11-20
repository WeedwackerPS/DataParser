meta:
  id: tower_floor_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: floor_id
    type: aux_types::vlq_base128_le_u
    if: has_field_floor_id
  - id: floor_index
    type: aux_types::vlq_base128_le_u
    if: has_field_floor_index
  - id: level_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_group_id
  - id: override_monster_level
    type: aux_types::vlq_base128_le_u
    if: has_field_override_monster_level
  - id: team_num
    type: aux_types::vlq_base128_le_u
    if: has_field_team_num
  - id: reward_id_five_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_five_stars
  - id: reward_id_ten_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_ten_stars
  - id: reward_id_fifteen_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_fifteen_stars
  - id: reward_id_three_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_three_stars
  - id: reward_id_six_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_six_stars
  - id: reward_id_nine_stars
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id_nine_stars
  - id: unlock_star_count
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_star_count
  - id: floor_level_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_floor_level_config_id
  - id: bg_image
    type: aux_types::string
    if: has_field_bg_image
instances:
  has_field_floor_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_floor_index: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level_group_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_override_monster_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_team_num: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_id_five_stars: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_reward_id_ten_stars: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_reward_id_fifteen_stars: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_id_three_stars: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_reward_id_six_stars: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_reward_id_nine_stars: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_unlock_star_count: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_floor_level_config_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_bg_image: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
