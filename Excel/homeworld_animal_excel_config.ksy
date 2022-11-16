meta:
  id: homeworld_animal_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: furniture_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_id
  - id: monster_id
    type: aux_types::vlq_base128_le_u
    if: has_field_monster_id
  - id: is_rebirth
    type: aux_types::vlq_base128_le_u
    if: has_field_is_rebirth
  - id: rebirth_cd
    type: aux_types::vlq_base128_le_u
    if: has_field_rebirth_cd
instances:
  has_field_furniture_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_monster_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_rebirth: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_rebirth_cd: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
