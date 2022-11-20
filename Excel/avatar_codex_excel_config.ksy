meta:
  id: avatar_codex_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_id
  - id: sort_factor
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_factor
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: begin_time
    type: aux_types::string
    if: has_field_begin_time
  - id: hide_when_dont_have
    type: u1
    if: has_field_hide_when_dont_have
instances:
  has_field_sort_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_sort_factor: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_avatar_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_begin_time: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_hide_when_dont_have: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
