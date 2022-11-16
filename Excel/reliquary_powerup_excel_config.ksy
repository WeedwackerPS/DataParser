meta:
  id: reliquary_powerup_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: powerup_multiple
    type: aux_types::vlq_base128_le_u
    if: has_field_powerup_multiple
  - id: powerup_weight
    type: aux_types::vlq_base128_le_u
    if: has_field_powerup_weight
instances:
  has_field_powerup_multiple: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_powerup_weight: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
