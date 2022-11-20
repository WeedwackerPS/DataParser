meta:
  id: match_punish_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: times
    type: aux_types::vlq_base128_le_u
    if: has_field_times
  - id: punish_time
    type: aux_types::vlq_base128_le_u
    if: has_field_punish_time
instances:
  has_field_times: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_punish_time: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
