meta:
  id: hit_level_template_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: aux_types::string
    if: has_field_type
  - id: hit_level
    type: aux_types::string
    if: has_field_hit_level
  - id: hit_impulse_x
    type: f4
    if: has_field_hit_impulse_x
  - id: hit_impulse_y
    type: f4
    if: has_field_hit_impulse_y
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_hit_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_hit_impulse_x: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_hit_impulse_y: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
