meta:
  id: activity_shop_sheet_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__activity_shop_sheet_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: is_ahead_preview
    type: u1
    if: has_field_is_ahead_preview
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: sheet_name
    type: aux_types::vlq_base128_le_u
    if: has_field_sheet_name
  - id: cond
    type: array_of__activity_shop_sheet_cond__length_s
    if: has_field_cond
  - id: sort_level
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_sort_level
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_is_ahead_preview: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_cond_comb: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_sheet_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cond: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_sort_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
types:
  array_of__activity_shop_sheet_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: activity_shop_sheet_cond
        repeat: expr
        repeat-expr: length.value
  activity_shop_sheet_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__activity_shop_sheet_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)