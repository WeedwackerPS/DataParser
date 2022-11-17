meta:
  id: home_world_extra_furniture_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: furniture_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_id
  - id: extra_data
    type: array_of__aux_types__string__length_u
    if: has_field_extra_data
instances:
  has_field_furniture_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_extra_data: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
