meta:
  id: reward_preview_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: desc
    type: aux_types::string
    if: has_field_desc
  - id: preview_items
    type: array_of__id_count_str_config__length_s
    if: has_field_preview_items
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_desc: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_preview_items: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
types:
  array_of__id_count_str_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: id_count_str_config
        repeat: expr
        repeat-expr: length.value
  id_count_str_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: count
        type: aux_types::string
        if: has_field_count
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)