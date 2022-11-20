meta:
  id: fleur_fair_buff_energy_stat_excel_config
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
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: stat_param
    type: aux_types::string
    if: has_field_stat_param
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gallery_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_stat_param: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_priority: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
