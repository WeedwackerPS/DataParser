meta:
  id: channeller_slab_buff_energy_excel_config
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
  - id: avatar_level
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_level
  - id: single_energy
    type: aux_types::vlq_base128_le_u
    if: has_field_single_energy
  - id: mp_energy
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_energy
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_avatar_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_single_energy: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_mp_energy: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
