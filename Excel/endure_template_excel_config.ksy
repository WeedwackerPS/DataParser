meta:
  id: endure_template_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__endure_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__endure_type
    if: has_field_type
  - id: gauge_length
    type: f4
    if: has_field_gauge_length
  - id: wane_speed
    type: f4
    if: has_field_wane_speed
  - id: recover_time
    type: f4
    if: has_field_recover_time
  - id: endurance
    type: f4
    if: has_field_endurance
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gauge_length: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_wane_speed: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_recover_time: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_endurance: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
