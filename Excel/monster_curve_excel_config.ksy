meta:
  id: monster_curve_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__grow_curve_info__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: curve_infos
    type: array_of__grow_curve_info__length_s
    if: has_field_curve_infos
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_curve_infos: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
