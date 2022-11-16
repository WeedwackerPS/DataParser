meta:
  id: ability_prop_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: prop_name
    type: aux_types::string
    if: has_field_prop_name
  - id: overall_min
    type: f4
    if: has_field_overall_min
  - id: overall_max
    type: f4
    if: has_field_overall_max
  - id: limit_tag_min
    type: f4
    if: has_field_limit_tag_min
  - id: limit_tag_max
    type: f4
    if: has_field_limit_tag_max
  - id: succeed_owner
    type: u1
    if: has_field_succeed_owner
instances:
  has_field_prop_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_overall_min: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_overall_max: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_limit_tag_min: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_limit_tag_max: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_succeed_owner: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
