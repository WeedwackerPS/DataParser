meta:
  id: perception_template_excel_config
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
  - id: view_range_factor
    type: f4
    if: has_field_view_range_factor
  - id: feel_range_factor
    type: f4
    if: has_field_feel_range_factor
  - id: hear_footstep_range_factor
    type: f4
    if: has_field_hear_footstep_range_factor
  - id: hear_other_range_factor
    type: f4
    if: has_field_hear_other_range_factor
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_view_range_factor: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_feel_range_factor: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_hear_footstep_range_factor: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_hear_other_range_factor: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
