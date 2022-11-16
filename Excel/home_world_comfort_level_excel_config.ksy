meta:
  id: home_world_comfort_level_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_id
  - id: comfort
    type: aux_types::vlq_base128_le_u
    if: has_field_comfort
  - id: home_coin_produce_rate
    type: aux_types::vlq_base128_le_u
    if: has_field_home_coin_produce_rate
  - id: companionship_exp_produce_rate
    type: aux_types::vlq_base128_le_u
    if: has_field_companionship_exp_produce_rate
  - id: level_name
    type: aux_types::vlq_base128_le_u
    if: has_field_level_name
  - id: level_icon_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_level_icon_hash
  - id: level_icon_hash_pre
    type: s1
    if: has_field_level_icon_hash
instances:
  has_field_level_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_comfort: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_home_coin_produce_rate: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_companionship_exp_produce_rate: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_level_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_level_icon_hash: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
