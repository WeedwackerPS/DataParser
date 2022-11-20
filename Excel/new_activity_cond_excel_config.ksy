meta:
  id: new_activity_cond_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__new_activity_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: cond_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cond_id
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: cond
    type: array_of__new_activity_cond__length_s
    if: has_field_cond
instances:
  has_field_cond_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_cond_comb: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_cond: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
types:
  array_of__new_activity_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: new_activity_cond
        repeat: expr
        repeat-expr: length.value
  new_activity_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__new_activity_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
