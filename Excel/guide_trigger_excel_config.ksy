meta:
  id: guide_trigger_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__guide_trigger_type
    - ../EnumType/enum__open_state_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: guide_name
    type: aux_types::string
    if: has_field_guide_name
  - id: type
    type: enum__guide_trigger_type
    if: has_field_type
  - id: param1
    type: aux_types::vlq_base128_le_u
    if: has_field_param1
  - id: open_state
    type: enum__open_state_type
    if: has_field_open_state
instances:
  has_field_guide_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_param1: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_state: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
