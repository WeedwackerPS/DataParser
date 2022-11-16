meta:
  id: dynamic_interaction_excel_config
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
  - id: self_content
    type: aux_types::vlq_base128_le_u
    if: has_field_self_content
  - id: self_content1
    type: aux_types::vlq_base128_le_u
    if: has_field_self_content1
  - id: self_intee_icon_name
    type: aux_types::string
    if: has_field_self_intee_icon_name
  - id: other_content
    type: aux_types::vlq_base128_le_u
    if: has_field_other_content
  - id: other_intee_icon_name
    type: aux_types::string
    if: has_field_other_intee_icon_name
  - id: other_can_intee
    type: u1
    if: has_field_other_can_intee
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_self_content: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_self_content1: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_self_intee_icon_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_other_content: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_other_intee_icon_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_other_can_intee: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
