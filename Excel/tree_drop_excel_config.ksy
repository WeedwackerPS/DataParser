meta:
  id: tree_drop_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__tree_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: tree_type
    type: enum__tree_type
    if: has_field_tree_type
  - id: drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_drop_id
instances:
  has_field_tree_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_drop_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
