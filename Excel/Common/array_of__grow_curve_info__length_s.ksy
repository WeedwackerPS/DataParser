meta:
  id: array_of__grow_curve_info__length_s
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__arith_type
    - ../../EnumType/enum__grow_curve_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: grow_curve_info
    repeat: expr
    repeat-expr: length.value
types:
  grow_curve_info:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__grow_curve_type
        if: has_field_type
      - id: arith
        type: enum__arith_type
        if: has_field_arith
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_arith: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_value: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)