meta:
  id: treasure_map_region_excel_config
  endian: le
  license: GPLv2
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
  - id: unlock_day
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_day
  - id: token_num
    type: aux_types::vlq_base128_le_u
    if: has_field_token_num
  - id: region_center
    type: array_of__f4__length_u
    if: has_field_region_center
  - id: region_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_region_radius
  - id: region_entry_id
    type: aux_types::vlq_base128_le_u
    if: has_field_region_entry_id
  - id: group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_group_list
  - id: revise_level
    type: aux_types::vlq_base128_le_u
    if: has_field_revise_level
  - id: spot_num_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_spot_num_list
  - id: token_num_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_token_num_list
  - id: misc_drop_prob_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_misc_drop_prob_list
  - id: misc_drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_misc_drop_id
  - id: mp_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_group_id
  - id: backup_group_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_backup_group_list
  - id: mp_token_threshold
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_token_threshold
  - id: mp_type_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_type_id
  - id: mp_position
    type: array_of__f4__length_u
    if: has_field_mp_position
  - id: mp_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_desc
  - id: mp_reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_reward_preview_id
  - id: fragment_bonus_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fragment_bonus_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_unlock_day: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_token_num: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_region_center: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_region_radius: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_region_entry_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_group_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_revise_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_spot_num_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_token_num_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_misc_drop_prob_list: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_misc_drop_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_mp_group_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_backup_group_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_mp_token_threshold: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_mp_type_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_mp_position: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_mp_desc: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_mp_reward_preview_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_fragment_bonus_id: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
