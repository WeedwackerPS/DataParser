meta:
  id: fish_stock_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__fish_stock_type
    - ../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type
    type: enum__fish_stock_type
    if: has_field_type
  - id: fish_weight
    type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    if: has_field_fish_weight
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_fish_weight: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
