meta:
  id: expedition_activity_marker_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: pos_x
    type: f4
    if: has_field_pos_x
  - id: pos_y
    type: f4
    if: has_field_pos_y
  - id: picture_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_picture_hash
  - id: picture_hash_pre
    type: s1
    if: has_field_picture_hash
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_pos_x: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_pos_y: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_picture_hash: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
