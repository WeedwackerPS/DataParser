meta:
  id: array_of__random_item_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: random_item_config
    repeat: expr
    repeat-expr: length.value
types:
  random_item_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
      - id: count
        type: aux_types::vlq_base128_le_u
        if: has_field_count
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
    instances:
      has_field_item_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_weight: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)