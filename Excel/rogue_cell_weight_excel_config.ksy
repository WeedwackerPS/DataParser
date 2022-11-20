meta:
  id: rogue_cell_weight_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: spring_weight
    type: aux_types::vlq_base128_le_u
    if: has_field_spring_weight
  - id: store_weight
    type: aux_types::vlq_base128_le_u
    if: has_field_store_weight
  - id: elite_weight
    type: aux_types::vlq_base128_le_u
    if: has_field_elite_weight
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_spring_weight: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_store_weight: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_elite_weight: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
