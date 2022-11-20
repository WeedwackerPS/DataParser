meta:
  id: bored_action_priority_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__bored_action_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: action_type
    type: enum__bored_action_type
    if: has_field_action_type
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
instances:
  has_field_action_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_weight: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
