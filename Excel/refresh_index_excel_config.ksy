meta:
  id: refresh_index_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__monster_rarity_type
    - ../EnumType/enum__refresh_index_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: type
    type: enum__refresh_index_type
    if: has_field_type
  - id: rarity
    type: enum__monster_rarity_type
    if: has_field_rarity
  - id: name
    type: aux_types::string
    if: has_field_name
  - id: refresh_id
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_id
instances:
  has_field_priority: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_rarity: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_refresh_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
