meta:
  id: sign_in_period_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: period_id
    type: aux_types::vlq_base128_le_u
    if: has_field_period_id
  - id: perfab_path
    type: aux_types::string
    if: has_field_perfab_path
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_period_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_perfab_path: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
