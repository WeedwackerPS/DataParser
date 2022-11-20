meta:
  id: element_state_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__element_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: element_type
    type: enum__element_type
    if: has_field_element_type
  - id: element_icon
    type: aux_types::string
    if: has_field_element_icon
  - id: rank
    type: aux_types::vlq_base128_le_u
    if: has_field_rank
instances:
  has_field_element_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_element_icon: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_rank: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
