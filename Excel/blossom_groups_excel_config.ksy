meta:
  id: blossom_groups_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: section_id
    type: aux_types::vlq_base128_le_u
    if: has_field_section_id
  - id: refresh_type_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_refresh_type_vec
  - id: new_group_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_new_group_vec
  - id: decorate_group_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_decorate_group_vec
  - id: next_camp_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_camp_id_vec
  - id: is_safe
    type: u1
    if: has_field_is_safe
  - id: is_initial_refresh
    type: u1
    if: has_field_is_initial_refresh
  - id: finish_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_progress
  - id: limit_level
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_level
  - id: fight_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_fight_radius
  - id: remind_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_remind_radius
  - id: blossom_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_blossom_tips
  - id: delay_unload_sec
    type: aux_types::vlq_base128_le_u
    if: has_field_delay_unload_sec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_city_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_section_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_refresh_type_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_new_group_vec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_decorate_group_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_next_camp_id_vec: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_safe: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_initial_refresh: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_finish_progress: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_limit_level: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_fight_radius: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_remind_radius: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_blossom_tips: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_delay_unload_sec: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
