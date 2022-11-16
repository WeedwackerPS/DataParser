meta:
  id: monster_special_name_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: special_name_id
    type: aux_types::vlq_base128_le_u
    if: has_field_special_name_id
  - id: special_name_lab_id
    type: aux_types::vlq_base128_le_u
    if: has_field_special_name_lab_id
  - id: special_name
    type: aux_types::vlq_base128_le_u
    if: has_field_special_name
  - id: is_in_random_list
    type: u1
    if: has_field_is_in_random_list
instances:
  has_field_special_name_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_special_name_lab_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_special_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_is_in_random_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
