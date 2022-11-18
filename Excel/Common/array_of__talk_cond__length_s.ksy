meta:
  id: array_of__talk_cond__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__string__length_u
    - ../../EnumType/enum__quest_cond_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: talk_cond
    repeat: expr
    repeat-expr: length.value
types:
  talk_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__quest_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)