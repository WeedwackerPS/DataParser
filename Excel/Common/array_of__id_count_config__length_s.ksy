meta:
  id: array_of__id_count_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: id_count_config
    repeat: expr
    repeat-expr: length.value
types:
  id_count_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: count
        type: aux_types::vlq_base128_le_u
        if: has_field_count
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
