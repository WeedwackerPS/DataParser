meta:
  id: channeller_slab_buff_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__channeller_slab_buff_quality
    - ../EnumType/enum__quality_type
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: buff_name
    type: aux_types::vlq_base128_le_u
    if: has_field_buff_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: desc_param
    type: array_of__aux_types__string__length_u
    if: has_field_desc_param
  - id: material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_id
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: cost
    type: aux_types::vlq_base128_le_u
    if: has_field_cost
  - id: buff_quality
    type: enum__channeller_slab_buff_quality
    if: has_field_buff_quality
  - id: buff_quality_type
    type: enum__quality_type
    if: has_field_buff_quality_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_buff_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc_param: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_material_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_icon: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cost: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_buff_quality: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_buff_quality_type: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
