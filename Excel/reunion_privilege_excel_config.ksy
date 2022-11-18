meta:
  id: reunion_privilege_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__reunion_privilege_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: daily_num
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_num
  - id: total_num
    type: aux_types::vlq_base128_le_u
    if: has_field_total_num
  - id: privilege_type
    type: array_of__reunion_privilege_config__length_s
    if: has_field_privilege_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_daily_num: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_total_num: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_privilege_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__reunion_privilege_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: reunion_privilege_config
        repeat: expr
        repeat-expr: length.value
  reunion_privilege_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__reunion_privilege_type
        if: has_field_type
      - id: sub_type
        type: aux_types::string
        if: has_field_sub_type
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_sub_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
