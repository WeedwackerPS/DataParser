meta:
  id: bored_event_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__board_event_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: event_type
    type: enum__board_event_type
    if: has_field_event_type
  - id: param
    type: aux_types::vlq_base128_le_u
    if: has_field_param
  - id: is_enable
    type: u1
    if: has_field_is_enable
  - id: add_bored
    type: aux_types::vlq_base128_le_s
    if: has_field_add_bored
  - id: max_bored
    type: aux_types::vlq_base128_le_s
    if: has_field_max_bored
instances:
  has_field_event_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_enable: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_add_bored: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_max_bored: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
