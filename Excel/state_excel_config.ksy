meta:
  id: state_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__state_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: state_name
    type: aux_types::string
    if: has_field_state_name
  - id: state_type
    type: enum__state_type
    if: has_field_state_type
  - id: rank
    type: aux_types::vlq_base128_le_u
    if: has_field_rank
instances:
  has_field_state_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_state_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_rank: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
