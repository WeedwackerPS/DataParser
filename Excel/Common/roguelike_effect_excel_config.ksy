meta:
  id: roguelike_effect_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__roguelike_effect_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: effect_type
    type: enum__roguelike_effect_type
    if: has_field_effect_type
  - id: effect_key
    type: aux_types::string
    if: has_field_effect_key
  - id: effect_param
    type: aux_types::string
    if: has_field_effect_param
  - id: display_offset
    type: aux_types::vlq_base128_le_s
    if: has_field_display_offset
instances:
  has_field_effect_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_effect_key: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_effect_param: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_display_offset: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
