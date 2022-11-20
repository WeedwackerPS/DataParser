meta:
  id: buff_icon_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: buff_id
    type: aux_types::vlq_base128_le_s
    if: has_field_buff_id
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: mutex_type
    type: aux_types::vlq_base128_le_s
    if: has_field_mutex_type
instances:
  has_field_buff_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_icon: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_mutex_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
