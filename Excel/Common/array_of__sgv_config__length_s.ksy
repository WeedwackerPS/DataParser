meta:
  id: array_of__sgv_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: sgv_config
    repeat: expr
    repeat-expr: length.value
types:
  sgv_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: key
        type: aux_types::string
        if: has_field_key
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_key: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_value: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
