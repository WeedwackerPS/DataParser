meta:
  id: match_limit_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/match_cond
seq:
  - id: bit_field
    type: u1
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: cond
    type: array_of__match_cond__length_u
    if: has_field_cond
instances:
  has_field_id: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_cond: # Field №1
    value: (bit_field & 0b10) != 0
types:
  array_of__match_cond__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: match_cond
        repeat: expr
        repeat-expr: length.value
