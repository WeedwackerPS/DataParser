meta:
  id: team_resonance_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__team_resonance_cond_type
    - ../ArrayType/array_of__f4__length_u
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: team_resonance_id
    type: aux_types::vlq_base128_le_u
    if: has_field_team_resonance_id
  - id: team_resonance_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_team_resonance_group_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: fire_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_fire_avatar_count
  - id: water_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_water_avatar_count
  - id: grass_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_grass_avatar_count
  - id: electric_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_electric_avatar_count
  - id: ice_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_ice_avatar_count
  - id: wind_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_wind_avatar_count
  - id: rock_avatar_count
    type: aux_types::vlq_base128_le_u
    if: has_field_rock_avatar_count
  - id: cond
    type: enum__team_resonance_cond_type
    if: has_field_cond
  - id: min_total_promote_level
    type: aux_types::vlq_base128_le_u
    if: has_field_min_total_promote_level
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: open_config
    type: aux_types::string
    if: has_field_open_config
  - id: add_props
    type: array_of__prop_val_config__length_s
    if: has_field_add_props
  - id: param_list
    type: array_of__f4__length_u
    if: has_field_param_list
instances:
  has_field_team_resonance_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_team_resonance_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_fire_avatar_count: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_water_avatar_count: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_grass_avatar_count: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_electric_avatar_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_ice_avatar_count: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_wind_avatar_count: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_rock_avatar_count: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_cond: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_min_total_promote_level: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_name: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_desc: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_open_config: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_add_props: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_param_list: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
