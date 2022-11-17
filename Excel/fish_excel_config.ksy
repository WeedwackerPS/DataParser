meta:
  id: fish_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: monster_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_id
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: hp
    type: aux_types::vlq_base128_le_u
    if: has_field_hp
  - id: skill_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_id
  - id: bonus_width
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_width
  - id: bonus_duration
    type: array_of__f4__length_u
    if: has_field_bonus_duration
  - id: bonus_offset
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_bonus_offset
  - id: bonus_speed
    type: array_of__f4__length_u
    if: has_field_bonus_speed
  - id: feeler_times
    type: array_of__f4__length_u
    if: has_field_feeler_times
  - id: attract_range
    type: f4
    if: has_field_attract_range
  - id: flee_range
    type: f4
    if: has_field_flee_range
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: drop_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_drop_id_list
  - id: fish_cate_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fish_cate_id
  - id: bite_timeout
    type: aux_types::vlq_base128_le_u
    if: has_field_bite_timeout
  - id: init_pose
    type: aux_types::vlq_base128_le_u
    if: has_field_init_pose
  - id: compound_id
    type: aux_types::vlq_base128_le_u
    if: has_field_compound_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_monster_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_item_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_hp: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_skill_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_bonus_width: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_bonus_duration: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_bonus_offset: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_bonus_speed: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_feeler_times: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_attract_range: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_flee_range: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_reward_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_drop_id_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_fish_cate_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_bite_timeout: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_init_pose: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_compound_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
