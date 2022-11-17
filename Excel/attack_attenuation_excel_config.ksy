meta:
  id: attack_attenuation_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: group
    type: aux_types::string
    if: has_field_group
  - id: reset_cycle
    type: f4
    if: has_field_reset_cycle
  - id: durability_sequence
    type: array_of__f4__length_u
    if: has_field_durability_sequence
  - id: enbreak_sequence
    type: array_of__f4__length_u
    if: has_field_enbreak_sequence
  - id: damage_sequence
    type: array_of__f4__length_u
    if: has_field_damage_sequence
instances:
  has_field_group: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_reset_cycle: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_durability_sequence: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_enbreak_sequence: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_damage_sequence: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
